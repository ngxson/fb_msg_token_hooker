.class Lcom/facebook/orca/contacts/picker/FriendListPickerCache$1;
.super Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;
.source "FriendListPickerCache.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/FriendListPickerCache;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache$1;->a:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache$1;->a:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache$1;->a:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->a(Lcom/facebook/orca/contacts/picker/FriendListPickerCache;Z)Z

    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
