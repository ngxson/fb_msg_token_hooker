.class public Lcom/facebook/orca/protocol/WebServiceHandler;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;
.source "WebServiceHandler.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

.field private final B:Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;

.field private final C:Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;

.field private final D:Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

.field private final E:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

.field private final F:Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;

.field private final G:Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;

.field private final H:Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;

.field private final I:Lcom/facebook/orca/protocol/methods/ChatSetVisibilityMethod;

.field private final J:Lcom/facebook/orca/protocol/methods/ChatGetVisibilityMethod;

.field private final K:Lcom/facebook/orca/protocol/methods/PushTraceInfoConfirmationMethod;

.field private final L:Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;

.field private final M:Lcom/facebook/orca/rollout/OrcaRolloutManager;

.field private final N:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final O:Lcom/facebook/orca/protocol/methods/AuthExpireSessionMethod;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/BatchRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/auth/AuthDataStore;

.field private final f:Lcom/facebook/orca/protocol/methods/AuthenticateMethod;

.field private final g:Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

.field private final h:Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;

.field private final i:Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;

.field private final j:Lcom/facebook/orca/protocol/methods/FetchMessageMethod;

.field private final k:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

.field private final l:Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

.field private final m:Lcom/facebook/orca/protocol/methods/SendMessageMethod;

.field private final n:Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

.field private final o:Lcom/facebook/orca/protocol/methods/AddMembersMethod;

.field private final p:Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

.field private final q:Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;

.field private final r:Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;

.field private final s:Lcom/facebook/orca/protocol/methods/UploadShareMethod;

.field private final t:Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;

.field private final u:Lcom/facebook/orca/protocol/methods/MarkThreadMethod;

.field private final v:Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;

.field private final w:Lcom/facebook/orca/protocol/methods/DeleteMessagesMethod;

.field private final x:Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;

.field private final y:Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;

.field private final z:Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/facebook/orca/protocol/WebServiceHandler;

    sput-object v0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/orca/auth/AuthDataStore;Lcom/facebook/orca/protocol/methods/AuthenticateMethod;Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;Lcom/facebook/orca/protocol/methods/FetchThreadMethod;Lcom/facebook/orca/protocol/methods/GetMeUserMethod;Lcom/facebook/orca/protocol/methods/SendMessageMethod;Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;Lcom/facebook/orca/protocol/methods/FetchMessageMethod;Lcom/facebook/orca/protocol/methods/AddMembersMethod;Lcom/facebook/orca/protocol/methods/CreateThreadMethod;Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;Lcom/facebook/orca/protocol/methods/UploadShareMethod;Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;Lcom/facebook/orca/protocol/methods/MarkThreadMethod;Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;Lcom/facebook/orca/protocol/methods/DeleteMessagesMethod;Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;Lcom/facebook/orca/protocol/methods/SendViaChatHandler;Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;Lcom/facebook/orca/protocol/methods/ChatSetVisibilityMethod;Lcom/facebook/orca/protocol/methods/ChatGetVisibilityMethod;Lcom/facebook/orca/protocol/methods/PushTraceInfoConfirmationMethod;Lcom/facebook/orca/rollout/OrcaRolloutManager;Lcom/facebook/orca/protocol/methods/AuthExpireSessionMethod;Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/BatchRunner;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;",
            ">;",
            "Lcom/facebook/orca/auth/AuthDataStore;",
            "Lcom/facebook/orca/protocol/methods/AuthenticateMethod;",
            "Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchThreadMethod;",
            "Lcom/facebook/orca/protocol/methods/GetMeUserMethod;",
            "Lcom/facebook/orca/protocol/methods/SendMessageMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchMessageMethod;",
            "Lcom/facebook/orca/protocol/methods/AddMembersMethod;",
            "Lcom/facebook/orca/protocol/methods/CreateThreadMethod;",
            "Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;",
            "Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;",
            "Lcom/facebook/orca/protocol/methods/UploadShareMethod;",
            "Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;",
            "Lcom/facebook/orca/protocol/methods/MarkThreadMethod;",
            "Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;",
            "Lcom/facebook/orca/protocol/methods/DeleteMessagesMethod;",
            "Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;",
            "Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;",
            "Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;",
            "Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;",
            "Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;",
            "Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;",
            "Lcom/facebook/orca/protocol/methods/SendViaChatHandler;",
            "Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;",
            "Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;",
            "Lcom/facebook/orca/protocol/methods/ChatSetVisibilityMethod;",
            "Lcom/facebook/orca/protocol/methods/ChatGetVisibilityMethod;",
            "Lcom/facebook/orca/protocol/methods/PushTraceInfoConfirmationMethod;",
            "Lcom/facebook/orca/rollout/OrcaRolloutManager;",
            "Lcom/facebook/orca/protocol/methods/AuthExpireSessionMethod;",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    const-string v1, "WebServiceHandler"

    invoke-direct {p0, v1}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;-><init>(Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    .line 129
    iput-object p2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    .line 130
    iput-object p3, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->d:Ljavax/inject/Provider;

    .line 131
    iput-object p4, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->e:Lcom/facebook/orca/auth/AuthDataStore;

    .line 132
    iput-object p5, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->f:Lcom/facebook/orca/protocol/methods/AuthenticateMethod;

    .line 133
    iput-object p6, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->g:Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

    .line 134
    iput-object p7, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->h:Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;

    .line 135
    iput-object p8, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->i:Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;

    .line 136
    iput-object p13, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->j:Lcom/facebook/orca/protocol/methods/FetchMessageMethod;

    .line 137
    iput-object p9, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->k:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    .line 138
    iput-object p10, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->l:Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    .line 139
    iput-object p11, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->m:Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    .line 140
    iput-object p12, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->n:Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

    .line 141
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->o:Lcom/facebook/orca/protocol/methods/AddMembersMethod;

    .line 142
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->p:Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    .line 143
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->q:Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;

    .line 144
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->r:Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;

    .line 145
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->s:Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    .line 146
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->t:Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;

    .line 147
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->u:Lcom/facebook/orca/protocol/methods/MarkThreadMethod;

    .line 148
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->v:Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;

    .line 149
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->w:Lcom/facebook/orca/protocol/methods/DeleteMessagesMethod;

    .line 150
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->x:Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;

    .line 151
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->y:Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;

    .line 152
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->z:Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;

    .line 153
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->A:Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

    .line 154
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->B:Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;

    .line 155
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->C:Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;

    .line 156
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->D:Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    .line 157
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->E:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    .line 158
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->F:Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;

    .line 159
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->G:Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;

    .line 160
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->L:Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;

    .line 161
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->H:Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;

    .line 162
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->I:Lcom/facebook/orca/protocol/methods/ChatSetVisibilityMethod;

    .line 163
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->J:Lcom/facebook/orca/protocol/methods/ChatGetVisibilityMethod;

    .line 164
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->K:Lcom/facebook/orca/protocol/methods/PushTraceInfoConfirmationMethod;

    .line 165
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->M:Lcom/facebook/orca/rollout/OrcaRolloutManager;

    .line 166
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->O:Lcom/facebook/orca/protocol/methods/AuthExpireSessionMethod;

    .line 167
    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->N:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 168
    return-void
.end method

.method private a(Lcom/facebook/orca/protocol/methods/AuthenticationResult;)Lcom/facebook/orca/auth/FacebookCredentials;
    .locals 3
    .parameter

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/methods/AuthenticationResult;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->N:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 207
    sget-object v1, Lcom/facebook/orca/prefs/AuthPrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/methods/AuthenticationResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 208
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/methods/AuthenticationResult;->a()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->e:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v1, v0}, Lcom/facebook/orca/auth/AuthDataStore;->a(Lcom/facebook/orca/auth/FacebookCredentials;)V

    .line 214
    return-object v0
.end method

.method private a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/server/NewMessageResult;
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 465
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 469
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v0

    .line 472
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaResource;

    .line 474
    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/media/MediaResource$Type;->VIDEO:Lcom/facebook/orca/media/MediaResource$Type;

    if-ne v1, v2, :cond_3

    .line 475
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->s:Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    invoke-static {v1, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "attachment-upload"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 479
    const-string v0, "{result=attachment-upload:$.id}"

    .line 484
    :goto_0
    new-instance v1, Lcom/facebook/orca/protocol/methods/SendMessageMethod$Params;

    invoke-direct {v1, p1, v0}, Lcom/facebook/orca/protocol/methods/SendMessageMethod$Params;-><init>(Lcom/facebook/orca/threads/Message;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->m:Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    invoke-static {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "send"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 492
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->j:Lcom/facebook/orca/protocol/methods/FetchMessageMethod;

    const-string v1, "{result=send:$.id}"

    invoke-static {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "fetch_sent"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "send"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 499
    new-instance v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/FetchMoreMessagesParams;-><init>(Lcom/facebook/orca/server/ThreadCriteria;JJI)V

    .line 505
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->n:Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

    invoke-static {v1, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "fetch"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "send"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 512
    const-string v0, "sendMessage"

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 513
    const-string v0, "send"

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 514
    const-string v0, "fetch_sent"

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMessageResult;

    .line 515
    const-string v1, "fetch"

    invoke-virtual {v7, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 517
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMessageResult;->a()Lcom/facebook/orca/threads/Message;

    move-result-object v3

    .line 521
    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v4

    .line 522
    invoke-virtual {v4}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 523
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const/4 v0, 0x1

    .line 528
    :goto_1
    if-nez v0, :cond_1

    move-object v4, v8

    .line 533
    :cond_1
    new-instance v0, Lcom/facebook/orca/server/NewMessageResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/NewMessageResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;J)V

    return-object v0

    :cond_2
    move v0, v9

    goto :goto_1

    :cond_3
    move-object v0, v8

    goto/16 :goto_0
.end method


# virtual methods
.method protected A(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 704
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 705
    const-string v1, "requestSmsConfirmationCodeParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;

    .line 708
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 709
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->A:Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected B(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 717
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 718
    const-string v1, "confirmPhoneParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ConfirmPhoneParams;

    .line 721
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 724
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->B:Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "confirm-phone"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 729
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->l:Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "get-me-user"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "confirm-phone"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 735
    const-string v0, "confirmPhone"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 737
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/GetMeUserResult;

    .line 738
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->e:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-virtual {v0}, Lcom/facebook/orca/server/GetMeUserResult;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/orca/auth/AuthDataStore;->a(Lcom/facebook/orca/users/User;)V

    .line 739
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected C(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 786
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 787
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 788
    const-string v2, "setSettingsParams"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/SetSettingsParams;

    .line 789
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->F:Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected D(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 797
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    .line 798
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->H:Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->a()V

    .line 799
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected E(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 828
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 829
    const-string v1, "traceInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 830
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 831
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->K:Lcom/facebook/orca/protocol/methods/PushTraceInfoConfirmationMethod;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected F(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 840
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 841
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->O:Lcom/facebook/orca/protocol/methods/AuthExpireSessionMethod;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 289
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 290
    const-string v1, "fetchThreadListParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListParams;

    .line 291
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 292
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->h:Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 294
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 302
    const-string v1, "fetchMoreThreadsParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    .line 303
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 304
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->i:Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 306
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 314
    const-string v1, "fetchThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/orca/server/FetchThreadParams;

    .line 316
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 319
    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadParams;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Lcom/facebook/orca/server/MarkThreadParams;

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/server/MarkThreadParams$Mark;->READ:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    const/4 v3, 0x1

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadParams;->d()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/server/MarkThreadParams;-><init>(Ljava/lang/String;Lcom/facebook/orca/server/MarkThreadParams$Mark;ZJ)V

    .line 325
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->u:Lcom/facebook/orca/protocol/methods/MarkThreadMethod;

    invoke-static {v1, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "update-last-read"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->k:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v0, v6}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "fetch-thread"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadParams;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "update-last-read"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 339
    const-string v0, "fetchThread"

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 342
    const-string v0, "fetch-thread"

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 343
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0

    .line 331
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 385
    const-string v1, "createThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/CreateThreadParams;

    .line 386
    invoke-virtual {v0}, Lcom/facebook/orca/server/CreateThreadParams;->a()Lcom/facebook/orca/threads/Message;

    move-result-object v2

    .line 389
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 390
    const/4 v3, 0x0

    .line 391
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->z()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v2

    .line 394
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/media/MediaResource;

    .line 396
    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v4

    sget-object v5, Lcom/facebook/orca/media/MediaResource$Type;->VIDEO:Lcom/facebook/orca/media/MediaResource$Type;

    if-ne v4, v5, :cond_0

    .line 397
    iget-object v3, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->s:Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    invoke-static {v3, v2}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    const-string v3, "attachment-upload"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 401
    const-string v2, "{result=attachment-upload:$.id}"

    .line 406
    :goto_0
    new-instance v3, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;

    invoke-direct {v3, v0, v2}, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;-><init>(Lcom/facebook/orca/server/CreateThreadParams;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->p:Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    invoke-static {v0, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "create-thread"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 414
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const-string v2, "{result=create-thread:$.tid}"

    invoke-static {v2}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 419
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->k:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "fetch-thread"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "create-thread"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 426
    const-string v0, "createThread"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 427
    const-string v0, "fetch-thread"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 430
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method protected f(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 438
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 439
    const-string v0, "outgoingMessage"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 440
    const-string v2, "userKeyInCanonicalThread"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-static {v1}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    .line 450
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->E:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a(Lcom/facebook/orca/threads/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->E:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/server/NewMessageResult;

    move-result-object v1

    .line 454
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 461
    :goto_0
    return-object v0

    .line 455
    :catch_0
    move-exception v1

    .line 456
    sget-object v2, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 461
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/WebServiceHandler;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/server/NewMessageResult;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected g(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 350
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 351
    const-string v1, "addMembersParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/AddMembersParams;

    .line 354
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 355
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->o:Lcom/facebook/orca/protocol/methods/AddMembersMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    const-string v3, "add-members"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 361
    new-instance v2, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v3, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/AddMembersParams;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 366
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->k:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "fetch"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "add-members"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 373
    const-string v0, "addMembers"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 377
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected h(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 570
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 571
    const-string v1, "removeMemberParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RemoveMemberParams;

    .line 574
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 575
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->t:Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    const-string v3, "remove-members"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 580
    new-instance v2, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v3, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/RemoveMemberParams;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 585
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->k:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "fetch"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "remove-members"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 592
    const-string v0, "removeMember"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 596
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected i(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 603
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 604
    const-string v1, "markThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/MarkThreadParams;

    .line 605
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 606
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->u:Lcom/facebook/orca/protocol/methods/MarkThreadMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected l(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 614
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 615
    const-string v1, "deleteThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteThreadParams;

    .line 616
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 617
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->v:Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected m(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 625
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 626
    const-string v1, "deleteMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteMessagesParams;

    .line 627
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 628
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->w:Lcom/facebook/orca/protocol/methods/DeleteMessagesMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected n(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 636
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 637
    const-string v1, "modifyThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ModifyThreadParams;

    .line 640
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 643
    const/4 v2, 0x0

    .line 644
    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 645
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->x:Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    const-string v3, "setThreadName"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 649
    const-string v2, "setThreadName"

    .line 653
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 654
    iget-object v3, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->y:Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;

    invoke-static {v3, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v3

    const-string v4, "setThreadImage"

    invoke-virtual {v3, v4}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 659
    const-string v2, "setThreadImage"

    .line 662
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 663
    iget-object v3, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->C:Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;

    invoke-static {v3, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v3

    const-string v4, "muteThread"

    invoke-virtual {v3, v4}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 668
    const-string v2, "muteThread"

    .line 672
    :cond_2
    new-instance v3, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v4, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 677
    iget-object v3, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->k:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v3, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v3, "fetch"

    invoke-virtual {v0, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 684
    const-string v0, "modifyThread"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 687
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 688
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected p(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 695
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 696
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->z:Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected r(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 746
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 749
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->D:Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "appConfig"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 755
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->G:Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "gk"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 761
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->L:Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "rollouts"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 766
    const-string v1, "handleGetAppInfo"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 769
    const-string v1, "appConfig"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/appconfig/AppConfig;

    .line 772
    const-string v2, "gk"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 775
    const-string v3, "rollouts"

    invoke-virtual {v0, v3}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 777
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/util/Pair;

    const/4 v4, 0x0

    const-string v5, "gateKeepers"

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    const-string v4, "rollouts"

    invoke-static {v4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;[Landroid/util/Pair;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected s(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 806
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    .line 807
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 808
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->J:Lcom/facebook/orca/protocol/methods/ChatGetVisibilityMethod;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 809
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected t(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 816
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 817
    const-string v1, "chatSetVisibilityParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 818
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 819
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->I:Lcom/facebook/orca/protocol/methods/ChatSetVisibilityMethod;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 820
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected u(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 558
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 559
    const-string v1, "fetchMoreMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    .line 560
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 561
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->n:Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 563
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected v(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 226
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->l:Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 232
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->D:Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "appConfig"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 238
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->G:Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "gk"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 244
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->M:Lcom/facebook/orca/rollout/OrcaRolloutManager;

    invoke-virtual {v1}, Lcom/facebook/orca/rollout/OrcaRolloutManager;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->L:Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "rollouts"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 251
    :cond_0
    const-string v1, "handleLogin"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 254
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/GetMeUserResult;

    .line 255
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->e:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-virtual {v1}, Lcom/facebook/orca/server/GetMeUserResult;->a()Lcom/facebook/orca/users/User;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/orca/auth/AuthDataStore;->a(Lcom/facebook/orca/users/User;)V

    .line 258
    const-string v2, "appConfig"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/appconfig/AppConfig;

    .line 261
    const-string v3, "gk"

    invoke-virtual {v0, v3}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 264
    const-string v4, "rollouts"

    invoke-virtual {v0, v4}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 266
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/util/Pair;

    const/4 v5, 0x0

    const-string v6, "appConfig"

    invoke-static {v6, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    const-string v5, "gateKeepers"

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "rollouts"

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;[Landroid/util/Pair;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected w(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 175
    const-string v1, "passwordCredentials"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/PasswordCredentials;

    .line 176
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->N:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/AuthPrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    new-instance v2, Lcom/facebook/orca/protocol/methods/AuthenticateMethod$Params;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/AuthenticateMethod$Params;-><init>(Lcom/facebook/orca/auth/PasswordCredentials;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 180
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->f:Lcom/facebook/orca/protocol/methods/AuthenticateMethod;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/methods/AuthenticationResult;

    .line 182
    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/WebServiceHandler;->a(Lcom/facebook/orca/protocol/methods/AuthenticationResult;)Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected x(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 191
    const-string v1, "accessToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->N:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/AuthPrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    new-instance v2, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 197
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->g:Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/methods/AuthenticationResult;

    .line 199
    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/WebServiceHandler;->a(Lcom/facebook/orca/protocol/methods/AuthenticationResult;)Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected y(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 278
    const-string v1, "unregisterPushTokenParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/UnregisterPushTokenParams;

    .line 280
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 281
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->r:Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected z(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 545
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 546
    const-string v1, "registerPushTokenParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RegisterPushTokenParams;

    .line 548
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 549
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->q:Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RegisterPushTokenResult;

    .line 551
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method
