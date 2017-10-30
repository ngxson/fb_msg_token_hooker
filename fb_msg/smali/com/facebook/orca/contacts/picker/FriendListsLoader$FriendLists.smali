.class public final enum Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;
.super Ljava/lang/Enum;
.source "FriendListsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

.field public static final enum FAVORITE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

.field public static final enum MOBILE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

.field public static final enum ONLINE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

.field public static final enum TOP_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    const-string v1, "FAVORITE_FRIENDS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->FAVORITE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    .line 127
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    const-string v1, "TOP_FRIENDS"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->TOP_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    .line 128
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    const-string v1, "ONLINE_FRIENDS"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->ONLINE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    .line 129
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    const-string v1, "MOBILE_FRIENDS"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->MOBILE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    sget-object v1, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->FAVORITE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->TOP_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->ONLINE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->MOBILE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->$VALUES:[Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;
    .locals 1
    .parameter

    .prologue
    .line 125
    const-class v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->$VALUES:[Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    invoke-virtual {v0}, [Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    return-object v0
.end method
