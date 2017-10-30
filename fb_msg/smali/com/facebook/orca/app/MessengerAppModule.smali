.class public Lcom/facebook/orca/app/MessengerAppModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "MessengerAppModule.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/orca/config/OrcaConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/app/Application;

.field private final c:Lcom/facebook/orca/inject/ContextScope;

.field private final d:Lcom/facebook/orca/app/OrcaAppType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/facebook/orca/config/OrcaDynamicConfig;

    sput-object v0, Lcom/facebook/orca/app/MessengerAppModule;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/facebook/orca/inject/ContextScope;Lcom/facebook/orca/app/OrcaAppType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule;->b:Landroid/app/Application;

    .line 113
    iput-object p2, p0, Lcom/facebook/orca/app/MessengerAppModule;->c:Lcom/facebook/orca/inject/ContextScope;

    .line 114
    iput-object p3, p0, Lcom/facebook/orca/app/MessengerAppModule;->d:Lcom/facebook/orca/app/OrcaAppType;

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/MessengerAppModule;)Landroid/app/Application;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/orca/app/MessengerAppModule;->b:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/facebook/orca/app/MessengerAppModule;->a:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 119
    const-string v0, "OrcaAppModule.configure"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/facebook/orca/app/FbBaseModule;

    iget-object v2, p0, Lcom/facebook/orca/app/MessengerAppModule;->b:Landroid/app/Application;

    iget-object v3, p0, Lcom/facebook/orca/app/MessengerAppModule;->c:Lcom/facebook/orca/inject/ContextScope;

    const-string v4, "msgr"

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/orca/app/FbBaseModule;-><init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 122
    new-instance v1, Lcom/facebook/orca/module/UiModule;

    iget-object v2, p0, Lcom/facebook/orca/app/MessengerAppModule;->b:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/facebook/orca/module/UiModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 123
    new-instance v1, Lcom/facebook/orca/app/MessagesModule;

    iget-object v2, p0, Lcom/facebook/orca/app/MessengerAppModule;->b:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/facebook/orca/app/MessagesModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 124
    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule;

    iget-object v2, p0, Lcom/facebook/orca/app/MessengerAppModule;->b:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/facebook/orca/analytics/AnalyticsModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 125
    new-instance v1, Lcom/facebook/contacts/data/ContactsModule;

    iget-object v2, p0, Lcom/facebook/orca/app/MessengerAppModule;->b:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/facebook/contacts/data/ContactsModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 126
    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule;

    iget-object v2, p0, Lcom/facebook/orca/app/MessengerAppModule;->b:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 127
    new-instance v1, Lcom/facebook/orca/server/ServicesModule;

    iget-object v2, p0, Lcom/facebook/orca/app/MessengerAppModule;->b:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/facebook/orca/server/ServicesModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 128
    new-instance v1, Lcom/facebook/orca/push/mqtt/OrcaPushModule;

    iget-object v2, p0, Lcom/facebook/orca/app/MessengerAppModule;->b:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/facebook/orca/push/mqtt/OrcaPushModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 129
    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttPushModule;

    iget-object v2, p0, Lcom/facebook/orca/app/MessengerAppModule;->b:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/facebook/orca/push/mqtt/MqttPushModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 130
    new-instance v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;

    const-string v2, "com.facebook.orca.prefs"

    const-string v3, "com.facebook.orca.provider.ACCESS"

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 132
    const-class v1, Lcom/facebook/orca/app/LoginReminderManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$LoginReminderProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$LoginReminderProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->c()V

    .line 136
    const-class v1, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$OrcaPackageInfoProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$OrcaPackageInfoProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 138
    const-class v1, Lcom/facebook/orca/auth/OrcaAuthDataStore;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$OrcaAuthDataStoreProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$OrcaAuthDataStoreProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 141
    const-class v1, Lcom/facebook/orca/auth/AuthDataStore;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/auth/OrcaAuthDataStore;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 143
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/IsSmsOnlyModeActive;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$IsSmsOnlyModeActiveProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$IsSmsOnlyModeActiveProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 146
    const-class v1, Lcom/facebook/orca/config/PlatformAppConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/app/OrcaAppType;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 148
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/IsFirstPartySsoEnabled;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 151
    const-class v1, Lcom/facebook/orca/app/IntendedAudience;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$IntendedAudienceProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$IntendedAudienceProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 153
    const-class v1, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/MessengerAppModule;->d:Lcom/facebook/orca/app/OrcaAppType;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 155
    const-class v1, Landroid/content/SharedPreferences;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/DefaultSharedPreferences;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$DefaultSharedPreferencesProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$DefaultSharedPreferencesProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 159
    const-class v1, Lcom/facebook/orca/config/OrcaProductionConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$OrcaProductionConfigProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$OrcaProductionConfigProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 162
    sget-object v1, Lcom/facebook/orca/app/MessengerAppModule;->a:Ljava/lang/Class;

    const-class v2, Lcom/facebook/orca/config/OrcaDynamicConfig;

    if-ne v1, v2, :cond_0

    .line 164
    const-class v1, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$OrcaDynamicConfigProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$OrcaDynamicConfigProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 173
    :goto_0
    const-class v1, Lcom/facebook/config/AppBuildInfo;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/config/OrcaConfig;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 176
    const-class v1, Lcom/facebook/orca/intents/MessagingIntentUris;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$MessagingIntentUrisProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$MessagingIntentUrisProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 179
    const-class v1, Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$AnalyticsConfigProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$AnalyticsConfigProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 182
    const-class v1, Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$MessagingNotificationPreferencesProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$MessagingNotificationPreferencesProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 185
    const-class v1, Lcom/facebook/orca/notify/MessengerForegroundProvider;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$MessengerForegroundProviderProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$MessengerForegroundProviderProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 188
    const-class v1, Lcom/facebook/orca/login/SsoLoginUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$SsoLoginUtilProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$SsoLoginUtilProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 191
    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/MessagesForegroundProviderUri;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    const-string v2, "content://com.facebook.orca.notify.FbandroidMessagesForegroundProvider/orca_foreground"

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 194
    const-class v1, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$AuthenticatedActivityHelperProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$AuthenticatedActivityHelperProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 196
    const-class v1, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$MessengerLoginFlowHelperProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$MessengerLoginFlowHelperProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 198
    const-class v1, Lcom/facebook/orca/app/AppInitializationActivityHelper;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$DataInitializationActivityHelperProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$DataInitializationActivityHelperProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 200
    const-class v1, Lcom/facebook/orca/common/visuals/VisualAppTheme;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$VisualAppThemeProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$VisualAppThemeProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 204
    const-class v1, Lcom/facebook/orca/app/OrcaLogInitializer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$OrcaLogInitializerProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$OrcaLogInitializerProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 206
    const-class v1, Lcom/facebook/orca/app/OrcaFirstInstallInitializer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$OrcaFirstInstallInitializerProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$OrcaFirstInstallInitializerProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 208
    const-class v1, Lcom/facebook/orca/app/OrcaLibPhoneNumberInitializer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$OrcaLibPhoneNumberInitializerProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$OrcaLibPhoneNumberInitializerProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 210
    const-class v1, Lcom/facebook/orca/app/OrcaLibPhoneNumberInitializer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$OrcaLibPhoneNumberInitializerProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$OrcaLibPhoneNumberInitializerProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 212
    const-class v1, Lcom/facebook/orca/media/MediaCacheCleanupServiceInitializer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$AttachmentCacheCleanupServiceInitializerProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$AttachmentCacheCleanupServiceInitializerProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 215
    const-class v1, Lcom/facebook/orca/auth/LogoutHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/activity/MessengerLogoutHandler;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 217
    const-class v1, Lcom/facebook/orca/prefs/AboutHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/activity/MessengerAboutHandler;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 219
    const-class v1, Lcom/facebook/orca/activity/MessengerLogoutHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$MessengerLogoutHandlerProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$MessengerLogoutHandlerProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 221
    const-class v1, Lcom/facebook/orca/activity/MessengerAboutHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$MessengerAboutHandlerProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$MessengerAboutHandlerProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 224
    const-class v1, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$OrcaServiceHandlerHookForAppProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$OrcaServiceHandlerHookForAppProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 227
    const-class v1, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 228
    const-class v1, Lcom/facebook/orca/common/visuals/VisualAppTheme;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$VisualAppThemeProvider;

    invoke-direct {v2, p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$VisualAppThemeProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 230
    const-class v1, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/app/AppInitializationActivityHelper;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 234
    const-class v1, Lcom/facebook/orca/app/INeedInit;

    const-class v2, Lcom/facebook/orca/annotations/NeedsHighPriorityInitOnBackgroundThread;

    invoke-static {v1, v2}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/app/OrcaLogInitializer;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/app/OrcaFirstInstallInitializer;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/app/AppInitCompleteInitializer;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 240
    const-class v1, Lcom/facebook/orca/app/INeedInit;

    const-class v2, Lcom/facebook/orca/annotations/NeedsLowPriorityInitOnUiThread;

    invoke-static {v1, v2}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/push/PushInitializer;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/app/OrcaLogBoundConnectionsInitializer;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 250
    const-class v1, Lcom/facebook/orca/server/OrcaServiceHandlerHook;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 252
    const-class v1, Lcom/facebook/orca/app/INeedInit;

    const-class v2, Lcom/facebook/orca/annotations/NeedsLowPriorityInitOnBackgroundThread;

    invoke-static {v1, v2}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/app/OrcaLibPhoneNumberInitializer;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/media/MediaCacheCleanupServiceInitializer;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 258
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/IsPersistentPushServiceEnabledForApp;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 262
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 263
    return-void

    .line 169
    :cond_0
    const-class v1, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessengerAppModule$OrcaConfigProvider;

    invoke-direct {v2, p0}, Lcom/facebook/orca/app/MessengerAppModule$OrcaConfigProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    goto/16 :goto_0
.end method
