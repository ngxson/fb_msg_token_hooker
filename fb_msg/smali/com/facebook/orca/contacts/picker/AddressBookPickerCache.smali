.class public Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;
.super Ljava/lang/Object;
.source "AddressBookPickerCache.java"


# instance fields
.field private final a:J

.field private final b:Lcom/facebook/orca/common/util/Clock;

.field private c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/util/Clock;Landroid/content/ContentResolver;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->a:J

    .line 26
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->b:Lcom/facebook/orca/common/util/Clock;

    .line 29
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache$1;-><init>(Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;Landroid/os/Handler;)V

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 38
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->c:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->b:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->c:Lcom/google/common/collect/ImmutableList;

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->c()V

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->c:Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/common/collect/ImmutableList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->c:Lcom/google/common/collect/ImmutableList;

    .line 42
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->b:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->c:Lcom/google/common/collect/ImmutableList;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
