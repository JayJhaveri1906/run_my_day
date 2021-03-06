abstract class SilenceNotificationsRepository {
  Future<void> enableSilence();

  Future<void> disableSilence();

  Future<bool> isDndActive();
}
