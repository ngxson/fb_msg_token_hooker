.class public Lcom/facebook/orca/push/mqtt/IsPersistentPushServiceEnabledForUserProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "IsPersistentPushServiceEnabledForUserProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/orca/prefs/PrefKey;


# instance fields
.field private final b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "android_persistent_push_service"

    invoke-static {v0}, Lcom/facebook/orca/prefs/ConfigPrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/push/mqtt/IsPersistentPushServiceEnabledForUserProvider;->a:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/IsPersistentPushServiceEnabledForUserProvider;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/IsPersistentPushServiceEnabledForUserProvider;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/push/mqtt/IsPersistentPushServiceEnabledForUserProvider;->a:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/IsPersistentPushServiceEnabledForUserProvider;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
