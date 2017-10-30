.class public Lcom/facebook/orca/app/MessagesModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "MessagesModule.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule;->a:Landroid/content/Context;

    .line 325
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/orca/app/MessagesModule;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    new-instance v0, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 334
    new-instance v0, Lcom/facebook/orca/emoji/EmojiModule;

    invoke-direct {v0}, Lcom/facebook/orca/emoji/EmojiModule;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 335
    new-instance v0, Lcom/facebook/orca/phone/module/PhoneModule;

    invoke-direct {v0}, Lcom/facebook/orca/phone/module/PhoneModule;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 336
    new-instance v0, Lcom/facebook/orca/server/module/MessagesServiceModule;

    invoke-direct {v0}, Lcom/facebook/orca/server/module/MessagesServiceModule;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 337
    new-instance v0, Lcom/facebook/orca/sms/MmsSmsModule;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/orca/sms/MmsSmsModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 338
    new-instance v0, Lcom/facebook/orca/database/ThreadsDbModule;

    invoke-direct {v0}, Lcom/facebook/orca/database/ThreadsDbModule;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 339
    new-instance v0, Lcom/facebook/orca/database/UsersDbModule;

    invoke-direct {v0}, Lcom/facebook/orca/database/UsersDbModule;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 340
    new-instance v0, Lcom/facebook/chatheads/ChatHeadsModule;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/chatheads/ChatHeadsModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 341
    new-instance v0, Lcom/facebook/orca/audio/AudioModule;

    invoke-direct {v0}, Lcom/facebook/orca/audio/AudioModule;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 343
    const-class v0, Lcom/facebook/orca/debug/OrcaErrorReporter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/debug/OrcaErrorReporterImpl;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 345
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/DisableBackgroundOperations;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/orca/app/MessagesModule;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 350
    const-class v0, Lcom/facebook/common/util/TriState;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsAnalyticsEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/IsAnalyticsEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 353
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsPresenceEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/presence/IsPresenceEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 356
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsDeliveredReadReceiptEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/cache/IsDeliveredReadReceiptEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 359
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsInAppNotificationsEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/notify/InAppNotificationEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 362
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsMoreMobileFriendsEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/presence/IsMoreMobileFriendsEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 365
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsLastActiveEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/users/IsLastActiveEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 368
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsTelephonyAvailable;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/telephone/IsTelephonyAvailableProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 371
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsTesterPrefsEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/prefs/IsTesterPrefsEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 375
    const-class v0, Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/CurrentFolderName;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/threads/CurrentFolderNameProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 379
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/UserAgentString;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$OrcaUserAgentProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaUserAgentProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 382
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/PhoneIsoCountryCode;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/common/util/PhoneIsoCountryCodeProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 386
    const-class v0, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 389
    const-class v0, Lcom/facebook/orca/appconfig/AppConfigSerialization;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$AppConfigSerializationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$AppConfigSerializationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 391
    const-class v0, Lcom/facebook/orca/cache/AppConfigCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$AppConfigCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$AppConfigCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 394
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$DataCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$DataCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 397
    const-class v0, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 400
    const-class v0, Lcom/facebook/orca/cache/ArchiveThreadManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ArchiveThreadManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ArchiveThreadManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 403
    const-class v0, Lcom/facebook/orca/cache/SpamThreadManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$SpamThreadManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$SpamThreadManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 406
    const-class v0, Lcom/facebook/orca/cache/ReadThreadManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ReadThreadManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ReadThreadManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 409
    const-class v0, Lcom/facebook/orca/cache/SaveDraftManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$SaveDraftManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$SaveDraftManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 412
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadDisplayCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadDisplayCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 415
    const-class v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadParticipantUtilsProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadParticipantUtilsProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 418
    const-class v0, Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 421
    const-class v0, Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ChatVisiblityCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ChatVisiblityCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 424
    const-class v0, Lcom/facebook/orca/common/OrcaWakeLockManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$OrcaWakeLockManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaWakeLockManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 427
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$C2DMReceiverWakeLockHolderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$C2DMReceiverWakeLockHolderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 430
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttReceiverWakeLockHolder;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MqttReceiverWakeLockHolderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MqttReceiverWakeLockHolderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 433
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$UiCountersProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$UiCountersProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 436
    const-class v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$AudioAttachmentPlayerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$AudioAttachmentPlayerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 439
    const-class v0, Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$AudioRecorderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$AudioRecorderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 441
    const-class v0, Lcom/facebook/orca/location/LocationCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$LocationCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$LocationCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 444
    const-class v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 447
    const-class v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 450
    const-class v0, Lcom/facebook/orca/push/C2dmPushManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$C2dmPushTransportProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$C2dmPushTransportProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 453
    const-class v0, Lcom/facebook/orca/push/MqttPushManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MqttPushTransportProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MqttPushTransportProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 456
    const-class v0, Lcom/facebook/orca/push/PushInitializer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$PushInitializerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$PushInitializerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 459
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMPushRegistrationHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/C2dmPushManager;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 461
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsGcmEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/c2dm/IsGcmEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 464
    const-class v0, Lcom/facebook/orca/push/MessengerPushHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MessengerPushHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MessengerPushHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 467
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$C2DMRegistrarProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$C2DMRegistrarProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 470
    const-class v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$PresenceManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$PresenceManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 473
    const-class v0, Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$OrcaForegroundActivityListenerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaForegroundActivityListenerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 476
    const-class v0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$FbSdcardLoggerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$FbSdcardLoggerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 479
    const-class v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$DefaultTilesProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$DefaultTilesProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 482
    const-class v0, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$OfflineThreadingIdGeneratorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$OfflineThreadingIdGeneratorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 485
    const-class v0, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$OrcaNetworkManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaNetworkManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 488
    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$PhoneNumberUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 491
    const-class v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$OrcaPhoneNumberUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaPhoneNumberUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 494
    const-class v0, Lcom/facebook/orca/common/names/NameSplitter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$NameSplitterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$NameSplitterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 497
    const-class v0, Lcom/facebook/orca/database/DbMessageCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$DbMessageCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$DbMessageCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 500
    const-class v0, Lcom/facebook/orca/debug/OrcaErrorReporterImpl;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$OrcaErrorReporterImplProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaErrorReporterImplProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 503
    const-class v0, Lcom/facebook/orca/database/DbClock;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$DbClockProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$DbClockProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 506
    const-class v0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$DeliveredReadReceiptManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$DeliveredReadReceiptManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 509
    const-class v0, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MessageDeliveredReadStateDisplayUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MessageDeliveredReadStateDisplayUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 512
    const-class v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 515
    const-class v0, Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 518
    const-class v0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerActivityListenerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerActivityListenerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 522
    const-class v0, Lcom/facebook/orca/location/GeocodingCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$GeocodingCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$GeocodingCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 525
    const-class v0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MeOnlinePresenceManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MeOnlinePresenceManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 529
    const-class v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$GlobalNotificationPrefsSynchronizerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$GlobalNotificationPrefsSynchronizerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->c()V

    .line 532
    const-class v0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadNotificationPrefsSynchronizerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadNotificationPrefsSynchronizerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->c()V

    .line 535
    const-class v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->c()V

    .line 538
    const-class v0, Lcom/facebook/orca/server/MessagesServiceManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MessagesServiceManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MessagesServiceManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->c()V

    .line 543
    const-class v0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$OrcaActivityBroadcasterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaActivityBroadcasterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 545
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$AttachmentDataFactoryProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$AttachmentDataFactoryProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 548
    const-class v0, Lcom/facebook/orca/cache/CacheServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 550
    const-class v0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ErrorDialogBuilderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ErrorDialogBuilderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 552
    const-class v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ErrorMessageGeneratorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ErrorMessageGeneratorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 554
    const-class v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MessageRenderingUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MessageRenderingUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 556
    const-class v0, Lcom/facebook/orca/users/LastActiveHelper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$LastActiveHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$LastActiveHelperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 559
    const-class v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$AnchorableToastProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$AnchorableToastProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 561
    const-class v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadNameViewComputerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadNameViewComputerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 563
    const-class v0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$RowReceiptTextViewComputerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$RowReceiptTextViewComputerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 565
    const-class v0, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$TextListWithMoreComputerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$TextListWithMoreComputerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 567
    const-class v0, Lcom/facebook/orca/common/util/FileSizeUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$FileSizeUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$FileSizeUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 570
    const-class v0, Lcom/facebook/orca/database/DbMediaResourceSerialization;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$DbMediaResourceSerializationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$DbMediaResourceSerializationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 572
    const-class v0, Lcom/facebook/orca/database/DbDraftSerialization;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$DbDraftSerializationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$DbDraftSerializationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 574
    const-class v0, Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$DbParticipantsSerializationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$DbParticipantsSerializationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 576
    const-class v0, Lcom/facebook/orca/database/DbAttachmentSerialization;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$DbAttachmentSerializationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$DbAttachmentSerializationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 578
    const-class v0, Lcom/facebook/orca/database/DbSharesSerialization;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$DbSharesSerializationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$DbSharesSerializationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 580
    const-class v0, Lcom/facebook/orca/database/DbCoordinatesSerialization;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$DbCoordinatesSerializationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$DbCoordinatesSerializationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 582
    const-class v0, Lcom/facebook/orca/debug/ErrorReportSender;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ErrorReportSenderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ErrorReportSenderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 584
    const-class v0, Lcom/facebook/orca/debug/MemoryUsageDumper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MemoryUsageDumperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MemoryUsageDumperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 586
    const-class v0, Lcom/facebook/orca/images/ImageSearchHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ImageSearchHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ImageSearchHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 588
    const-class v0, Lcom/facebook/orca/images/ImageSearchListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ImageSearchListAdapterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ImageSearchListAdapterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 590
    const-class v0, Lcom/facebook/orca/location/LocateUserExecutor;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$LocationAsyncTaskProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$LocationAsyncTaskProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 592
    const-class v0, Lcom/facebook/orca/location/LocationServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$LocationServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$LocationServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 594
    const-class v0, Lcom/facebook/orca/location/GeocodingExecutor;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$GeocodingDeferrableProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$GeocodingDeferrableProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 596
    const-class v0, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationExecutorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationExecutorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 598
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$NotificationSettingsUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$NotificationSettingsUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 600
    const-class v0, Lcom/facebook/orca/photos/picking/OldPhotoCleaner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$OldPhotoCleanerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$OldPhotoCleanerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 602
    const-class v0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$DefaultTilesCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$DefaultTilesCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 605
    const-class v0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$UserTileViewLogicProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$UserTileViewLogicProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 608
    const-class v0, Lcom/facebook/orca/protocol/methods/AddMembersMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$AddMembersMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$AddMembersMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 610
    const-class v0, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$AuthenticateSsoMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$AuthenticateSsoMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 612
    const-class v0, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$CreateThreadMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$CreateThreadMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 614
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$FetchAppConfigMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$FetchAppConfigMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 616
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$FetchMoreMessagesMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$FetchMoreMessagesMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 618
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchMessageMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$FetchMessageMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$FetchMessageMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 620
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$FetchMoreThreadsMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$FetchMoreThreadsMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 622
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$FetchThreadMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$FetchThreadMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 624
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$FetchThreadsFqlHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$FetchThreadsFqlHelperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 626
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$FetchThreadListMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$FetchThreadListMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 628
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchLastActiveMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$FetchLastActiveMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$FetchLastActiveMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 630
    const-class v0, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$GetFriendsMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$GetFriendsMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 632
    const-class v0, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$GetMeUserMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$GetMeUserMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 634
    const-class v0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MessageDeserializerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MessageDeserializerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 636
    const-class v0, Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$RemoveMemberMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$RemoveMemberMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 638
    const-class v0, Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$SendMessageMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$SendMessageMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 640
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$FetchRolloutsMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$FetchRolloutsMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 642
    const-class v0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$SendMessageParameterHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$SendMessageParameterHelperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 644
    const-class v0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 646
    const-class v0, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$SetThreadImageMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$SetThreadImageMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 648
    const-class v0, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadSummaryDeserializerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadSummaryDeserializerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 650
    const-class v0, Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$UploadPhotoMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$UploadPhotoMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 652
    const-class v0, Lcom/facebook/orca/protocol/WebServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$WebServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$WebServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 654
    const-class v0, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$PushDeserializationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$PushDeserializationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 656
    const-class v0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MessageDecoderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MessageDecoderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 658
    const-class v0, Lcom/facebook/orca/server/PreProcessingServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 660
    const-class v0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadChooserDialogProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadChooserDialogProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 662
    const-class v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadListAdapterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadListAdapterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 664
    const-class v0, Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadListLoaderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadListLoaderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 666
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadDateUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadDateUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->b()V

    .line 669
    const-class v0, Lcom/facebook/orca/threads/ThreadSourceUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadSourceUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadSourceUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 671
    const-class v0, Lcom/facebook/orca/threads/ThreadSnippetUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadSnippetUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadSnippetUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 673
    const-class v0, Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MessageListAdapterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MessageListAdapterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 675
    const-class v0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadMemberListAdapterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadMemberListAdapterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 677
    const-class v0, Lcom/facebook/orca/users/AddressBookServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 679
    const-class v0, Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForMessages;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$FacebookUserIteratorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$FacebookUserIteratorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 682
    const-class v0, Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 684
    const-class v0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$BuiltInContactsUserIteratorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$BuiltInContactsUserIteratorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 686
    const-class v0, Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$UserSerializationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$UserSerializationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 688
    const-class v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerHookProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerHookProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 690
    const-class v0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerQueueHookProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerQueueHookProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 692
    const-class v0, Lcom/facebook/orca/auth/FacebookCredentials;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$FacebookCredentialsProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$FacebookCredentialsProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 694
    const-class v0, Lcom/facebook/orca/config/PlatformAppHttpConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$PlatformAppHttpConfigProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$PlatformAppHttpConfigProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 696
    const-class v0, Lcom/facebook/orca/config/PlatformAppHttpConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ProductionPlatformAppHttpConfig;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ProductionPlatformAppHttpConfigProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ProductionPlatformAppHttpConfigProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 699
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/AuthTokenString;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$AuthTokenStringProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$AuthTokenStringProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 702
    const-class v0, Lcom/facebook/orca/threads/MessagesUiReorderer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MessagesUiReordererProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MessagesUiReordererProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 704
    const-class v0, Lcom/facebook/orca/users/User;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/MeUser;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MeUserProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MeUserProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 707
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/MeUserId;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MeUserIdProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MeUserIdProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 710
    const-class v0, Lcom/facebook/common/util/TriState;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsMeUserAnEmployee;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/users/IsMeUserAnEmployeeProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 713
    const-class v0, Lcom/facebook/orca/debug/LogReportSender;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$LogReportSenderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$LogReportSenderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 715
    const-class v0, Lcom/facebook/orca/merge/MergeServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$MergeServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$MergeServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 717
    const-class v0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$DispatchServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$DispatchServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 719
    const-class v0, Lcom/facebook/orca/threads/ThreadsCollectionMerger;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadsCollectionMergerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadsCollectionMergerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 721
    const-class v0, Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$OrcaNuxControllerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaNuxControllerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 724
    const-class v0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$CanonicalThreadPresenceHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$CanonicalThreadPresenceHelperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 726
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadViewTitleHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadViewTitleHelperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 728
    const-class v0, Lcom/facebook/orca/threads/ThreadSummaryStitching;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadSummaryStitchingProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadSummaryStitchingProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 730
    const-class v0, Lcom/facebook/orca/auth/UserTokenCredentials;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$UserCredentialsProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$UserCredentialsProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 732
    const-class v0, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ContactsUploadRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ContactsUploadRunnerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 735
    const-class v0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ContactsUploadServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ContactsUploadServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 737
    const-class v0, Lcom/facebook/orca/contacts/download/ContactsDownloadRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ContactsDownloadRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ContactsDownloadRunnerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 740
    const-class v0, Lcom/facebook/orca/threadview/PendingSendsDeduper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$PendingSendsDeduperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$PendingSendsDeduperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 743
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewLoader;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadViewLoaderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadViewLoaderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 745
    const-class v0, Lcom/facebook/orca/threadview/PendingSendsDeduper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$PendingSendsDeduperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$PendingSendsDeduperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 748
    const-class v0, Lcom/facebook/orca/rollout/OrcaRolloutManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$OrcaRolloutManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaRolloutManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 752
    const-class v0, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$PhoneNumberIdentificationServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberIdentificationServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 754
    const-class v0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$VerifyPhoneNumberSmsConsumerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$VerifyPhoneNumberSmsConsumerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 758
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$ThreadViewUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadViewUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 763
    const-class v0, Lcom/facebook/orca/server/OrcaServiceHandlerHook;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 765
    const-class v0, Lcom/facebook/orca/server/OrcaServiceQueueHook;

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 767
    const-class v0, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 769
    const-class v0, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 771
    const-class v0, Lcom/facebook/orca/push/PushHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/MessengerPushHandler;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 773
    const-class v0, Lcom/facebook/orca/debug/FbLogWriter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 775
    const-class v0, Lcom/facebook/orca/push/PushManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/C2dmPushManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/MqttPushManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 778
    return-void
.end method
