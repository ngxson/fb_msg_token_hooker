.class Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/OrcaDataManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 787
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/OrcaDataManager;
    .locals 28

    .prologue
    .line 791
    new-instance v2, Lcom/facebook/orca/app/OrcaDataManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v3}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/facebook/orca/auth/AuthDataStore;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/auth/AuthDataStore;

    const-class v5, Ljava/lang/Boolean;

    const-class v6, Lcom/facebook/orca/annotations/IsSmsOnlyModeActive;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v5

    const-class v6, Lcom/facebook/orca/images/ImageCache;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/images/ImageCache;

    const-class v7, Lcom/facebook/orca/audio/AudioCache;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/audio/AudioCache;

    const-class v8, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    const-class v9, Lcom/facebook/orca/cache/ThreadsCache;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/orca/cache/ThreadsCache;

    const-class v10, Lcom/facebook/orca/cache/ThreadDisplayCache;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/orca/cache/ThreadDisplayCache;

    const-class v11, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    const-class v12, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    const-class v13, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    const-class v14, Lcom/facebook/orca/prefs/UiCounters;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/orca/prefs/UiCounters;

    const-class v15, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    const-class v16, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;

    const-class v17, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    const-class v18, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v18

    const-class v19, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    const-class v20, Lcom/facebook/orca/server/OrcaServiceQueueManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/facebook/orca/server/OrcaServiceQueueManager;

    const-class v21, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    const-class v22, Lcom/facebook/orca/location/LocationCache;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/facebook/orca/location/LocationCache;

    const-class v23, Lcom/facebook/orca/location/GeocodingCache;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/facebook/orca/location/GeocodingCache;

    const-class v24, Lcom/facebook/orca/database/DbMessageCache;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/facebook/orca/database/DbMessageCache;

    const-class v25, Lcom/facebook/orca/cache/ChatVisibilityCache;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/facebook/orca/cache/ChatVisibilityCache;

    const-class v26, Lcom/facebook/orca/rollout/OrcaRolloutManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/facebook/orca/rollout/OrcaRolloutManager;

    const-class v27, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-direct/range {v2 .. v27}, Lcom/facebook/orca/app/OrcaDataManager;-><init>(Landroid/content/Context;Lcom/facebook/orca/auth/AuthDataStore;Ljavax/inject/Provider;Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/audio/AudioCache;Lcom/facebook/orca/database/ThreadsDatabaseSupplier;Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/cache/ThreadDisplayCache;Lcom/facebook/orca/database/UsersDatabaseSupplier;Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;Lcom/facebook/orca/prefs/UiCounters;Lcom/facebook/orca/contacts/picker/FriendListPickerCache;Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;Ljavax/inject/Provider;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/server/OrcaServiceQueueManager;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Lcom/facebook/orca/location/LocationCache;Lcom/facebook/orca/location/GeocodingCache;Lcom/facebook/orca/database/DbMessageCache;Lcom/facebook/orca/cache/ChatVisibilityCache;Lcom/facebook/orca/rollout/OrcaRolloutManager;Lcom/facebook/orca/app/OrcaActivityBroadcaster;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;->a()Lcom/facebook/orca/app/OrcaDataManager;

    move-result-object v0

    return-object v0
.end method
