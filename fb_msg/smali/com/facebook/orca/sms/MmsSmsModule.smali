.class public Lcom/facebook/orca/sms/MmsSmsModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "MmsSmsModule.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsModule;->a:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/sms/MmsSmsModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsModule;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    const-class v0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsServiceHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 65
    const-class v0, Lcom/facebook/orca/sms/MmsSmsFetchThreadsHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsFetchThreadsHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsFetchThreadsHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 67
    const-class v0, Lcom/facebook/orca/sms/MmsSmsFetchThreadHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsFetchThreadHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsFetchThreadHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 69
    const-class v0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsContentResolverHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsContentResolverHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 71
    const-class v0, Lcom/facebook/orca/sms/MmsSmsUserUtils;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsUserUtilsProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsUserUtilsProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 73
    const-class v0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsSendMessageHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsSendMessageHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 75
    const-class v0, Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsLoggerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsLoggerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 80
    const-class v0, Lcom/facebook/orca/sms/MmsContentResolverHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$MmsContentResolverHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsContentResolverHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 82
    const-class v0, Lcom/facebook/orca/sms/MmsSendMessageHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$MmsSendMessageHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSendMessageHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 85
    const-class v0, Lcom/facebook/orca/sms/MmsReceiverWakeLockHolder;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$MmsReceiverWakeLockHolderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsReceiverWakeLockHolderProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 88
    const-class v0, Lcom/facebook/orca/sms/MmsTransactionStateReceiverWakeLockHolder;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$MmsTransactionStateReceiverWakeLockHolderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsTransactionStateReceiverWakeLockHolderProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 93
    const-class v0, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$SmsContentResolverHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$SmsContentResolverHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 95
    const-class v0, Lcom/facebook/orca/sms/SmsSendMessageHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$SmsSendMessageHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$SmsSendMessageHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 98
    const-class v0, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$SmsReceiverWakeLockHolderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$SmsReceiverWakeLockHolderProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 103
    const-class v0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$SmsSentObserverProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$SmsSentObserverProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 106
    const-class v0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$ExternalSmsOperationsHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$ExternalSmsOperationsHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 109
    const-class v0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsLogExternalMessagesLogicProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsLogExternalMessagesLogicProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 114
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/sms/IsClientSmsEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 117
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsSmsOnlyModeEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/sms/IsSmsOnlyModeEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 120
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsSmsNotifyEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/sms/IsSmsNotifyEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 123
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsClientSmsPermitted;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 126
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsClientSmsPossible;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/sms/IsClientSmsPossibleProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 130
    const-class v0, Lcom/facebook/orca/sms/MmsSmsInitializer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsInitializerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsInitializerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 132
    const-class v0, Lcom/facebook/orca/app/INeedInit;

    const-class v1, Lcom/facebook/orca/annotations/NeedsHighPriorityInitOnBackgroundThread;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/sms/MmsSmsInitializer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 134
    return-void
.end method
