.class Lcom/facebook/orca/app/MessengerAppModule$OrcaAuthDataStoreProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/auth/OrcaAuthDataStore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessengerAppModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$OrcaAuthDataStoreProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$OrcaAuthDataStoreProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/auth/OrcaAuthDataStore;
    .locals 8

    .prologue
    .line 270
    new-instance v0, Lcom/facebook/orca/auth/OrcaAuthDataStore;

    const-class v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule$OrcaAuthDataStoreProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v2, Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessengerAppModule$OrcaAuthDataStoreProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/users/UserSerialization;

    const-class v3, Lcom/facebook/orca/debug/OrcaErrorReporter;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessengerAppModule$OrcaAuthDataStoreProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/debug/OrcaErrorReporter;

    const-class v4, Ljava/lang/Boolean;

    const-class v5, Lcom/facebook/orca/annotations/IsSmsOnlyModeEnabled;

    invoke-virtual {p0, v4, v5}, Lcom/facebook/orca/app/MessengerAppModule$OrcaAuthDataStoreProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v4

    const-class v5, Ljava/lang/Boolean;

    const-class v6, Lcom/facebook/orca/annotations/IsClientSmsPossible;

    invoke-virtual {p0, v5, v6}, Lcom/facebook/orca/app/MessengerAppModule$OrcaAuthDataStoreProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v5

    const-class v6, Landroid/telephony/TelephonyManager;

    const-class v7, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v6, v7}, Lcom/facebook/orca/app/MessengerAppModule$OrcaAuthDataStoreProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    const-class v7, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/app/MessengerAppModule$OrcaAuthDataStoreProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/auth/OrcaAuthDataStore;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/users/UserSerialization;Lcom/facebook/orca/debug/OrcaErrorReporter;Ljavax/inject/Provider;Ljavax/inject/Provider;Landroid/telephony/TelephonyManager;Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$OrcaAuthDataStoreProvider;->a()Lcom/facebook/orca/auth/OrcaAuthDataStore;

    move-result-object v0

    return-object v0
.end method
