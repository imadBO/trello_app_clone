import 'package:serverpod/serverpod.dart';
import 'package:trelloappclone_server/src/generated/protocol.dart';

class MemberEndpoint extends Endpoint {
  Future<Member> addMember(Session session, Member member) async {
    await Member.insert(session, member);
    return member;
  }

  Future<List<Member>> getMembersByWorkspace(
    Session session, {
    required int workspaceId,
  }) async {
    List<Member> members = await Member.find(
      session,
      where: (workspace) => workspace.id.equals(workspaceId),
    );
    return members;
  }

  Future<List<User>> getInformationOfMembers(
      Session session, List<Member> members) async {
    List<User> users = [];
    for (Member member in members) {
      User? user = await User.findById(session, member.userId);
      if (user != null) {
        users.add(user);
      }
    }
    return users;
  }

  Future<Workspace> deleteMember(
    Session session,
    Member member,
    Workspace workspace,
  ) async {
    await Member.delete(
      session,
      where: (mT) {
        return mT.workspaceId.equals(workspace.id) & mT.id.equals(member.id);
      },
    );
    List<Member> members = await Member.find(
      session,
      where: (mT) {
        return mT.workspaceId.equals(workspace.id);
      },
    );
    workspace.members = members;
    return workspace;
  }
}
