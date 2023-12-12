import 'package:serverpod/serverpod.dart';
import 'package:trelloappclone_server/src/generated/protocol.dart';

class ListboardEndpoint extends Endpoint {
  Future<Listboard> createListboard(
      Session session, Listboard listboard) async {
    await Listboard.insert(session, listboard);
    return listboard;
  }

  Future<List<Listboard>> getListsByBoard(
    Session session, {
    required int boardId,
  }) async {
    List<Listboard> lists = await Listboard.find(
      session,
      where: (list) => list.boardId.equals(boardId),
    );

    for (Listboard list in lists) {
      List<Card> cards = await Card.find(
        session,
        where: (card) => card.listId.equals(list.id),
      );
      list.cards = cards;
    }
    return lists;
  }
}
