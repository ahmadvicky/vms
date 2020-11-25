class Methods {
  static const String login = 'Login';
  static const String getInfo = 'GetInfo';
  static const String memberDevices = 'MemberDevices';
  static const String memberLogin = 'MemberLogin';
  static const String memberLogout = 'MemberLogout';
  static const String memberRegister = 'MemberRegister';
  static const String getMemberProfile = 'GetMemberProfile';
  static const String memberGetProfile = 'MemberGetProfile';
  static const String getMemberDetail = 'GetMemberDetail';
  static const String getNetworkDetail = 'GetNetworkDetail';
  static const String memberCreatePost = 'MemberCreatePost'; // rssArticleId
  static const String memberUpdateProfileNetwork = 'MemberUpdateProfileNetwork';
  static const String memberUpdateProfile = 'MemberUpdateProfile';
  static const String getListNetworkSlides = 'GetListNetworkSlides';
  static const String getListNetwork = 'GetListNetwork';
  static const String getListPostNetworkHome = 'GetListPostNetworkHome';
  static const String getListPostNetwork = 'GetListPostNetwork';
  static const String getListCommentPostNetwork = 'GetListCommentPostNetwork';
  static const String search = 'Search'; // post, topic, member, member, tag
  static const String memberGetListNetworkManage = 'MemberGetListNetworkManage'; // post, topic, member, member, tag
  static const String getListNetworkAccount = 'GetListNetworkAccount';
  static const String getListProvince = 'GetListProvince';
  static const String getListCity = 'GetListCity'; // provinceId
  static const String getListBank = 'GetListBank';
  static const String memberUpdateProfileBankTax = 'MemberUpdateProfileBankTax';
  static const String getNetworkAccountDetail = 'GetNetworkAccountDetail';
  static const String memberUpdateProfileNetworkAccount = 'MemberUpdateProfileNetworkAccount';
  static const String memberChangePassword = 'MemberChangePassword';
  static const String getListTeam = 'GetListTeam';
  static const String memberSetNetworkTeam = 'MemberSetNetworkTeam';
  static const String getInfoPostNetwork = 'GetInfoPostNetwork';
  static const String memberShareNetwork = 'MemberShareNetwork';
  static const String memberChiefPostPinned = 'MemberChiefPostPinned';
  static const String getListMemberBannedNetwork = 'GetListMemberBannedNetwork';
  static const String memberCreateFreeTribe = 'MemberCreateFreeTribe';
  static const String getNetworkAccountCategory = 'GetNetworkAccountCategory';

  // Broadcast
  static const String getBroadcast = 'GetBroadcast';
  static const String getBroadcastDetails = 'GetBroadcastDetails';
  static const String chiefSaveBroadcast = 'ChiefSaveBroadcast';
  static const String chiefDuplicateBroadcast = 'ChiefDuplicateBroadcast'; // networkId, broadcastId
  static const String chiefDeleteBroadcast = 'ChiefDeleteBroadcast'; // networkId, broadcastId
  static const String getListSmartlist = 'GetListSmartlist'; // networkId
  static const String getPriceListAddOn = 'GetPriceListAddOn';

  // Messaging
  static const String getCountMemberConversationMessage = 'GetCountMemberConversationMessage';
  static const String getListConversation = 'GetListConversation';
  static const String getListConversationAll = 'GetListConversationAll';
  static const String getListConversationMessage = 'GetListConversationMessage';
  static const String getListMember = 'GetListMember';
  static const String memberSendConversation = 'MemberSendConversation';
  static const String memberGetListNetworkJoin = 'MemberGetListNetworkJoin';
  static const String memberSilentNotificationConversation = 'MemberSilentNotificationConversation';

  //Chat Group
  static const String chatGetRoom = 'ChatGetRoom';
  static const String chatCreateRoom = 'ChatCreateRoom';
  static const String chatGetParticipant = 'ChatGetParticipant';
  static const String chatAddParticipant = 'ChatAddParticipant';
  static const String chatAddMedia = 'ChatAddMedia';
  static const String chatGetMedia = 'ChatGetMedia';
  static const String chatSilentNotification = 'ChatSilentNotification';
  static const String chatRemoveParticipant = 'ChatRemoveParticipant';
  static const String chatGetListMember = 'ChatGetListMember'; // networkId, chatRoomId
  static const String chatGetUserUnreadCount = 'ChatGetUserUnreadCount';
  static const String chatDeleteRoom = 'ChatDeleteRoom'; // chatRoomId
  static const String chatUpdateRoom = 'ChatUpdateRoom';
  static const String chatClearChatHistory = 'ChatClearChatHistory';

  //Private Chat
  static const String chatGetPrivateRoom = 'ChatGetPrivateRoom';
  static const String chatGetPrivateAvailableRoom = 'ChatGetPrivateAvailableRoom';
  static const String chatGetPrivateMedia = 'ChatGetPrivateMedia';
  static const String chatAddPrivateMedia = 'ChatAddPrivateMedia';
  static const String chatPrivateSilentNotification = 'ChatPrivateSilentNotification';
  static const String chatRoomPinned = 'ChatRoomPinned';
  static const String chatPrivateRoomPinned = 'ChatPrivateRoomPinned';

  // RSS
  static const String memberAddRssContent = 'MemberAddRssContent'; // networkId, url
  static const String memberGetRssContent = 'MemberGetRssContent'; // networkId
  static const String memberAddRssFeed = 'MemberAddRssFeed'; // networkId, rssContentId, feedName
  static const String memberGetRssFeed = 'MemberGetRssFeed'; // networkId, rssContentId
  static const String memberSetRssPostOption = 'MemberSetRssPostOption';
  // networkId, rssContentId, rssFeedId (kalau dipassing set post setting feed), option (AUTO, APPROVAL)
  static const String memberGetRssArticle = 'MemberGetRssArticle';
  // networkId, rssContentId, rssFeedId ( dari page feed ),
  // page, perPage, dateStart, dateEnd, sort [newest, oldest]

  static const String memberGetListPostNetwork = 'MemberGetListPostNetwork';

  // Business Account
  static const String memberVerificationEmailByLink = 'MemberVerificationEmailByLink'; //email
  static const String businessGetPlan = 'BusinessGetPlan';
  static const String businessCreateBusinessAccount = 'BusinessCreateBusinessAccount';
  static const String businessChangePlan = 'BusinessChangePlan';
  static const String businessGetBusinessAccount = 'BusinessGetBusinessAccount';
  static const String businessGetBroadcastInfo = 'BusinessGetBroadcastInfo';
  static const String getNetwork = 'GetNetwork';
  static const String memberCreateTribe = 'MemberCreateTribe';
  static const String businessUpdateAccount = 'BusinessUpdateAccount';
  static const String businessGetBilling = 'BusinessGetBilling';
  static const String businessGetMemberListJoin = 'BusinessGetMemberListJoin'; // networkAccountId, isTeam=true
  static const String businessSetMemberRole = 'BusinessSetMemberRole'; // memberId, networkAccountId, roleName, tribePermission = [networkId]
  static const String BusinessGetRole = 'BusinessGetRole';
}
