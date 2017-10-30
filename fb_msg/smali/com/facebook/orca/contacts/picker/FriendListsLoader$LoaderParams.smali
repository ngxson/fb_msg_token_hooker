.class public Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;
.super Ljava/lang/Object;
.source "FriendListsLoader.java"


# instance fields
.field private final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/util/EnumSet;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->a:Ljava/util/EnumSet;

    .line 143
    iput p2, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->b:I

    .line 144
    iput-boolean p3, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->c:Z

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;)I
    .locals 1
    .parameter

    .prologue
    .line 132
    iget v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->b:I

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->FAVORITE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->TOP_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->c:Z

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->ONLINE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->MOBILE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
