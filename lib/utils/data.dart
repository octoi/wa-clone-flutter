class ProfileCardContent {
  final String profile;
  final String title;
  final String subTitle;
  final String time;
  final String howManyToRead;
  final bool hasNewMessage;

  ProfileCardContent({
    required this.profile,
    required this.title,
    required this.subTitle,
    required this.time,
    required this.howManyToRead,
    required this.hasNewMessage,
  });
}

List<ProfileCardContent> profileList = [
  ProfileCardContent(
    profile:
        "https://cdn.pixabay.com/photo/2016/03/04/22/54/panda-1236875_960_720.jpg",
    title: "Sleepy Panda",
    subTitle: "Let me get a sleep 💤",
    time: "16:14",
    howManyToRead: "",
    hasNewMessage: false,
  ),
  ProfileCardContent(
    profile:
        "https://cdn.pixabay.com/photo/2019/10/30/16/19/fox-4589927_960_720.jpg",
    title: "Fox",
    subTitle: "Could we meet tommorrow ??",
    time: "YESTERDAY",
    howManyToRead: "1",
    hasNewMessage: true,
  ),
  ProfileCardContent(
    profile:
        "https://cdn.pixabay.com/photo/2015/06/08/15/02/pug-801826_960_720.jpg",
    title: "Puggy Dog",
    subTitle: "ok sure 👍",
    time: "30/2/21",
    howManyToRead: "2",
    hasNewMessage: false,
  ),
  ProfileCardContent(
    profile:
        "https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_960_720.jpg",
    title: "Kitty cat",
    subTitle: "Vibing with my boss",
    time: "32/12/20",
    howManyToRead: "",
    hasNewMessage: false,
  ),
  ProfileCardContent(
    profile:
        "https://cdn.pixabay.com/photo/2012/06/19/10/32/owl-50267_960_720.jpg",
    title: "Owl",
    subTitle: "I will think about it",
    time: "16:14",
    howManyToRead: "",
    hasNewMessage: false,
  ),
];
