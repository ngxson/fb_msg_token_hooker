.class public Lcom/facebook/orca/app/FbBaseModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "FbBaseModule.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/inject/ContextScope;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/facebook/orca/app/FbBaseModule$1;

    invoke-direct {v0}, Lcom/facebook/orca/app/FbBaseModule$1;-><init>()V

    invoke-static {v0}, Lcom/google/common/util/concurrent/ExecutionList;->a(Lcom/google/common/util/concurrent/ExecutionList$UncaughtExceptionHandler;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule;->a:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/facebook/orca/app/FbBaseModule;->b:Lcom/facebook/orca/inject/ContextScope;

    .line 110
    iput-object p3, p0, Lcom/facebook/orca/app/FbBaseModule;->c:Ljava/lang/String;

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/FbBaseModule;)Lcom/facebook/orca/inject/ContextScope;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/app/FbBaseModule;->b:Lcom/facebook/orca/inject/ContextScope;

    return-object v0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$SystemServiceProvider;

    invoke-direct {v1, p0, p2}, Lcom/facebook/orca/app/FbBaseModule$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 310
    invoke-virtual {p0, p1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$AppSystemServiceProvider;

    invoke-direct {v1, p0, p2}, Lcom/facebook/orca/app/FbBaseModule$AppSystemServiceProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 313
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/app/FbBaseModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/app/FbBaseModule;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/app/FbBaseModule;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/app/FbBaseModule;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/facebook/app/UserActivityModule;

    invoke-direct {v0}, Lcom/facebook/app/UserActivityModule;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/app/FbBaseModule;->b:Lcom/facebook/orca/inject/ContextScope;

    iget-object v1, p0, Lcom/facebook/orca/app/FbBaseModule;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 118
    const-class v0, Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/app/FbBaseModule;->b:Lcom/facebook/orca/inject/ContextScope;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 119
    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 122
    const-class v0, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/common/util/SystemClock;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 124
    const-class v0, Lcom/facebook/orca/common/util/SystemClock;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$SystemClockProvider;

    invoke-direct {v1, v2}, Lcom/facebook/orca/app/FbBaseModule$SystemClockProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 127
    const-class v0, Ljava/util/Random;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/InsecureRandom;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$RandomProvider;

    invoke-direct {v1, v2}, Lcom/facebook/orca/app/FbBaseModule$RandomProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 130
    const-class v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$JsonFactoryProvider;

    invoke-direct {v1, v2}, Lcom/facebook/orca/app/FbBaseModule$JsonFactoryProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 133
    const-class v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$ObjectMapperProvider;

    invoke-direct {v1, v2}, Lcom/facebook/orca/app/FbBaseModule$ObjectMapperProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 136
    const-class v0, Lcom/facebook/orca/common/util/ObjectPoolManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$ObjectPoolManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$ObjectPoolManagerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 141
    const-class v0, Landroid/location/LocationManager;

    const-string v1, "location"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 142
    const-class v0, Landroid/view/WindowManager;

    const-string v1, "window"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 143
    const-class v0, Landroid/view/LayoutInflater;

    const-string v1, "layout_inflater"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 144
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "activity"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 145
    const-class v0, Landroid/os/PowerManager;

    const-string v1, "power"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 146
    const-class v0, Landroid/app/AlarmManager;

    const-string v1, "alarm"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 147
    const-class v0, Landroid/app/NotificationManager;

    const-string v1, "notification"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 148
    const-class v0, Landroid/app/KeyguardManager;

    const-string v1, "keyguard"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 149
    const-class v0, Landroid/app/SearchManager;

    const-string v1, "search"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 150
    const-class v0, Landroid/os/Vibrator;

    const-string v1, "vibrator"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 151
    const-class v0, Landroid/net/ConnectivityManager;

    const-string v1, "connectivity"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 152
    const-class v0, Landroid/net/wifi/WifiManager;

    const-string v1, "wifi"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 153
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "input_method"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 154
    const-class v0, Landroid/hardware/SensorManager;

    const-string v1, "sensor"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 155
    const-class v0, Landroid/text/ClipboardManager;

    const-string v1, "clipboard"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 156
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "phone"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 157
    const-class v0, Landroid/media/AudioManager;

    const-string v1, "audio"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 160
    const-class v0, Landroid/app/DownloadManager;

    const-string v1, "download"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 164
    :cond_0
    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 166
    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/app/FbBaseModule;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 169
    const-class v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$ActivityProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$ActivityProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 171
    const-class v0, Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$ResourcesProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$ResourcesProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 173
    const-class v0, Landroid/content/ContentResolver;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$ContentResolverProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$ContentResolverProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 175
    const-class v0, Landroid/content/ContentResolver;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$ContentResolverProviderFromApp;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$ContentResolverProviderFromApp;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 178
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$FragmentManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$FragmentManagerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 180
    const-class v0, Lcom/facebook/common/util/ProcessUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$ProcessUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$ProcessUtilProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 183
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/annotations/MyProcessId;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$MyProcessIdProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$MyProcessIdProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 186
    const-class v0, Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/app/FbBaseModule;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 189
    const-class v0, Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$HandlerProvider;

    invoke-direct {v1, v2}, Lcom/facebook/orca/app/FbBaseModule$HandlerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 191
    const-class v0, Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/DefaultExecutorService;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$DefaultExecutorServiceProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$DefaultExecutorServiceProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 195
    const-class v0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/DefaultExecutorService;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$DefaultListeningExecutorServiceProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$DefaultListeningExecutorServiceProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 199
    const-class v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$AndroidThreadUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$AndroidThreadUtilProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 202
    const-class v0, Lcom/facebook/orca/common/async/KeyedExecutor;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$KeyedExecutorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$KeyedExecutorProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 205
    const-class v0, Lcom/facebook/orca/debug/ActivityTracer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$ActivityTracerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$ActivityTracerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 209
    const-class v0, Landroid/location/Geocoder;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$GeocoderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$GeocoderProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 212
    const-class v0, Lcom/facebook/common/util/UiThreadExecutor;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$UiThreadExecutorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$UiThreadExecutorProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 217
    const-class v0, Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$FPSControllerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$FPSControllerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 220
    const-class v0, Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$FPSControllerActivityListenerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$FPSControllerActivityListenerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 224
    const-class v0, Lcom/facebook/orca/app/UserInteractionController;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$UserInteractionControllerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$UserInteractionControllerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 227
    const-class v0, Lcom/facebook/orca/app/UserInteractionController$ActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$UserInteractionControllerActivityListenerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$UserInteractionControllerActivityListenerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 231
    const-class v0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$UniqueIdForDeviceGeneratorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$UniqueIdForDeviceGeneratorProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 234
    const-class v0, Lcom/facebook/orca/app/ActivityBroadcaster;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$ActivityBroadcasterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$ActivityBroadcasterProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 239
    const-class v0, Lcom/facebook/orca/app/FbAppInitializer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 241
    const-class v0, Lcom/facebook/orca/app/AppInitLock;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$AppInitLockProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$AppInitLockProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 244
    const-class v0, Lcom/facebook/orca/app/AppInitCompleteInitializer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$AppInitCompleteInitializerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$AppInitCompleteInitializerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 246
    const-class v0, Lcom/facebook/orca/app/FbAppUserDataCleaner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 250
    const-class v0, Lcom/facebook/orca/debug/FbLogImpl;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 255
    const-class v0, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 256
    const-class v0, Lcom/facebook/orca/debug/FbLogWriter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 257
    const-class v0, Lcom/facebook/orca/app/INeedInit;

    const-class v1, Lcom/facebook/orca/annotations/NeedsHighPriorityInitOnBackgroundThread;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    .line 258
    const-class v0, Lcom/facebook/orca/app/INeedInit;

    const-class v1, Lcom/facebook/orca/annotations/NeedsLowPriorityInitOnUiThread;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    .line 259
    const-class v0, Lcom/facebook/orca/app/INeedInit;

    const-class v1, Lcom/facebook/orca/annotations/NeedsLowPriorityInitOnBackgroundThread;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    .line 260
    const-class v0, Lcom/facebook/orca/app/IHaveUserData;

    invoke-static {v0}, Lcom/google/inject/Key;->a(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    .line 262
    const-class v0, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 263
    const-class v0, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/app/UserInteractionController$ActivityListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 266
    const-class v0, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$LessEagerUiThreadSingletonInitializerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/FbBaseModule$LessEagerUiThreadSingletonInitializerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 268
    const-class v0, Lcom/facebook/orca/app/INeedInit;

    const-class v1, Lcom/facebook/orca/annotations/NeedsLowPriorityInitOnUiThread;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 270
    return-void
.end method
