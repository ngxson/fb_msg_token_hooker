.class public final enum Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;
.super Ljava/lang/Enum;
.source "FetchLastActiveParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

.field public static final enum ALL:Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

.field public static final enum FAVORITE_FRIENDS:Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

.field public static final enum TOP_FRIENDS:Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    const-string v1, "TOP_FRIENDS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;->TOP_FRIENDS:Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    .line 17
    new-instance v0, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    const-string v1, "FAVORITE_FRIENDS"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;->FAVORITE_FRIENDS:Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    .line 18
    new-instance v0, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;->ALL:Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    sget-object v1, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;->TOP_FRIENDS:Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;->FAVORITE_FRIENDS:Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;->ALL:Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;->$VALUES:[Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;->$VALUES:[Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    invoke-virtual {v0}, [Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    return-object v0
.end method
