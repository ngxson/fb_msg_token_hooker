.class public Landroid_src/mms/pdu/PduPersister;
.super Ljava/lang/Object;
.source "PduPersister.java"


# static fields
.field private static a:Landroid_src/mms/pdu/PduPersister;

.field private static final b:Landroid_src/mms/util/PduCache;

.field private static final c:[I

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final q:Landroid/content/Context;

.field private final r:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x9a

    const/16 v5, 0x96

    const/4 v4, 0x3

    const/4 v3, 0x4

    .line 91
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->c:[I

    .line 98
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "msg_box"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const-string v1, "retr_txt"

    aput-object v1, v0, v4

    const-string v1, "sub"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_cls"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "resp_txt"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tr_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ct_cls"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "read_status"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rpt_a"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "d_tm"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "retr_txt_cs"

    aput-object v2, v0, v1

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->d:[Ljava/lang/String;

    .line 156
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "chset"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "cd"

    aput-object v2, v0, v1

    const-string v1, "cid"

    aput-object v1, v0, v4

    const-string v1, "cl"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "ct"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text"

    aput-object v2, v0, v1

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->e:[Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->f:Ljava/util/HashMap;

    .line 193
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->f:Ljava/util/HashMap;

    sget-object v1, Landroid_src/provider/Telephony$Mms$Inbox;->a:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->f:Ljava/util/HashMap;

    sget-object v1, Landroid_src/provider/Telephony$Mms$Sent;->a:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->f:Ljava/util/HashMap;

    sget-object v1, Landroid_src/provider/Telephony$Mms$Draft;->a:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->f:Ljava/util/HashMap;

    sget-object v1, Landroid_src/provider/Telephony$Mms$Outbox;->a:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->g:Ljava/util/HashMap;

    .line 199
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->g:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->g:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->l:Ljava/util/HashMap;

    .line 203
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->l:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->l:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->h:Ljava/util/HashMap;

    .line 208
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->h:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->h:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->m:Ljava/util/HashMap;

    .line 212
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->m:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->m:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->i:Ljava/util/HashMap;

    .line 217
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->i:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->i:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->i:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->i:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->i:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->i:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->n:Ljava/util/HashMap;

    .line 225
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->n:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->n:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->n:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->n:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->n:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->n:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->j:Ljava/util/HashMap;

    .line 234
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->j:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->j:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->j:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->j:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->j:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->j:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->j:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->j:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->j:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->j:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->o:Ljava/util/HashMap;

    .line 246
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->o:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->o:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->o:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->o:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->o:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->o:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->o:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->o:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->o:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->o:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->k:Ljava/util/HashMap;

    .line 259
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->k:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->k:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->k:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->k:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->p:Ljava/util/HashMap;

    .line 265
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->p:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->p:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->p:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->p:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-static {}, Landroid_src/mms/util/PduCache;->b()Landroid_src/mms/util/PduCache;

    move-result-object v0

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->b:Landroid_src/mms/util/PduCache;

    .line 271
    return-void

    .line 91
    :array_0
    .array-data 0x4
        0x81t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Landroid_src/mms/pdu/PduPersister;->q:Landroid/content/Context;

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid_src/mms/pdu/PduPersister;->r:Landroid/content/ContentResolver;

    .line 279
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid_src/mms/pdu/PduPersister;
    .locals 1
    .parameter

    .prologue
    .line 283
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->a:Landroid_src/mms/pdu/PduPersister;

    if-eqz v0, :cond_0

    sget-object v0, Landroid_src/mms/pdu/PduPersister;->a:Landroid_src/mms/pdu/PduPersister;

    iget-object v0, v0, Landroid_src/mms/pdu/PduPersister;->q:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    :cond_0
    new-instance v0, Landroid_src/mms/pdu/PduPersister;

    invoke-direct {v0, p0}, Landroid_src/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid_src/mms/pdu/PduPersister;->a:Landroid_src/mms/pdu/PduPersister;

    .line 287
    :cond_1
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->a:Landroid_src/mms/pdu/PduPersister;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1238
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "iso-8859-1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    :goto_0
    return-object v0

    .line 1239
    :catch_0
    move-exception v0

    .line 1241
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1242
    const-string v0, ""

    goto :goto_0
.end method

.method private a(JI[Landroid_src/mms/pdu/EncodedStringValue;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 645
    new-instance v1, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 647
    array-length v2, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p4, v0

    .line 648
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 649
    const-string v4, "address"

    invoke-virtual {v3}, Landroid_src/mms/pdu/EncodedStringValue;->b()[B

    move-result-object v5

    invoke-static {v5}, Landroid_src/mms/pdu/PduPersister;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v4, "charset"

    invoke-virtual {v3}, Landroid_src/mms/pdu/EncodedStringValue;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    const-string v3, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/addr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 654
    iget-object v4, p0, Landroid_src/mms/pdu/PduPersister;->q:Landroid/content/Context;

    iget-object v5, p0, Landroid_src/mms/pdu/PduPersister;->r:Landroid/content/ContentResolver;

    invoke-static {v4, v5, v3, v1}, Landroid_src/database/sqlite/SqliteWrapper;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_0
    return-void
.end method

.method private a(JLandroid_src/mms/pdu/PduHeaders;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 470
    iget-object v0, p0, Landroid_src/mms/pdu/PduPersister;->q:Landroid/content/Context;

    iget-object v1, p0, Landroid_src/mms/pdu/PduPersister;->r:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "address"

    aput-object v5, v3, v7

    const-string v5, "charset"

    aput-object v5, v3, v6

    const-string v5, "type"

    aput-object v5, v3, v8

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid_src/database/sqlite/SqliteWrapper;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 475
    if-eqz v1, :cond_2

    .line 477
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 481
    sparse-switch v2, :sswitch_data_0

    .line 495
    const-string v0, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown address type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 483
    :sswitch_0
    :try_start_1
    new-instance v3, Landroid_src/mms/pdu/EncodedStringValue;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v0}, Landroid_src/mms/pdu/PduPersister;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid_src/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v3, v2}, Landroid_src/mms/pdu/PduHeaders;->a(Landroid_src/mms/pdu/EncodedStringValue;I)V

    goto :goto_0

    .line 490
    :sswitch_1
    new-instance v3, Landroid_src/mms/pdu/EncodedStringValue;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v0}, Landroid_src/mms/pdu/PduPersister;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid_src/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v3, v2}, Landroid_src/mms/pdu/PduHeaders;->b(Landroid_src/mms/pdu/EncodedStringValue;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 504
    :cond_2
    return-void

    .line 481
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0x89 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Landroid/database/Cursor;ILandroid_src/mms/pdu/PduHeaders;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 295
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->g:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 296
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 297
    new-instance v2, Landroid_src/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Landroid_src/mms/pdu/PduPersister;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid_src/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 299
    invoke-virtual {p3, v2, p4}, Landroid_src/mms/pdu/PduHeaders;->a(Landroid_src/mms/pdu/EncodedStringValue;I)V

    .line 301
    :cond_0
    return-void
.end method

.method private a(Landroid_src/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 742
    .line 743
    const/4 v0, 0x0

    .line 746
    :try_start_0
    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->a()[B

    move-result-object v3

    .line 747
    const-string v2, "text/plain"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/smil"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "text/html"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 750
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 751
    const-string v2, "text"

    new-instance v4, Landroid_src/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v3}, Landroid_src/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v4}, Landroid_src/mms/pdu/EncodedStringValue;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object v2, p0, Landroid_src/mms/pdu/PduPersister;->r:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 753
    new-instance v0, Landroid_src/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    .line 780
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 781
    :goto_0
    :try_start_1
    const-string v3, "PduPersister"

    const-string v4, "Failed to open Input/Output stream."

    invoke-static {v3, v4, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 782
    new-instance v3, Landroid_src/mms/MmsException;

    invoke-direct {v3, v0}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v2, :cond_1

    .line 789
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 794
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 796
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 799
    :cond_2
    :goto_3
    throw v0

    :cond_3
    move-object v2, v1

    .line 787
    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    .line 789
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 794
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 796
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 802
    :cond_6
    :goto_6
    return-void

    .line 756
    :cond_7
    :try_start_6
    iget-object v2, p0, Landroid_src/mms/pdu/PduPersister;->r:Landroid/content/ContentResolver;

    invoke-virtual {v2, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    move-result-object v2

    .line 757
    if-nez v3, :cond_b

    .line 758
    :try_start_7
    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->b()Landroid/net/Uri;

    move-result-object v3

    .line 759
    if-eqz v3, :cond_8

    if-ne v3, p2, :cond_a

    .line 760
    :cond_8
    const-string v3, "PduPersister"

    const-string v4, "Can\'t find data for this part."

    invoke-static {v3, v4}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 787
    if-eqz v2, :cond_9

    .line 789
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 794
    :cond_9
    :goto_7
    if-eqz v1, :cond_6

    .line 796
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_6

    .line 797
    :catch_1
    move-exception v0

    .line 798
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 790
    :catch_2
    move-exception v3

    .line 791
    const-string v4, "PduPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException while closing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 763
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid_src/mms/pdu/PduPersister;->r:Landroid/content/ContentResolver;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 769
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 770
    :goto_8
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 771
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_8

    .line 780
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 777
    :cond_b
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_4

    .line 783
    :catch_4
    move-exception v0

    .line 784
    :goto_9
    :try_start_b
    const-string v3, "PduPersister"

    const-string v4, "Failed to read/write data."

    invoke-static {v3, v4, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 785
    new-instance v3, Landroid_src/mms/MmsException;

    invoke-direct {v3, v0}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 790
    :catch_5
    move-exception v0

    .line 791
    const-string v3, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException while closing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 797
    :catch_6
    move-exception v0

    .line 798
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 790
    :catch_7
    move-exception v3

    .line 791
    const-string v4, "PduPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException while closing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 797
    :catch_8
    move-exception v2

    .line 798
    const-string v3, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException while closing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 787
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1

    .line 783
    :catch_9
    move-exception v0

    move-object v2, v1

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 3
    .parameter

    .prologue
    .line 1251
    :try_start_0
    const-string v0, "iso-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1255
    :goto_0
    return-object v0

    .line 1252
    :catch_0
    move-exception v0

    .line 1254
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1255
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method private b(Landroid/database/Cursor;ILandroid_src/mms/pdu/PduHeaders;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    .line 308
    invoke-static {v0}, Landroid_src/mms/pdu/PduPersister;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p3, v0, p4}, Landroid_src/mms/pdu/PduHeaders;->a([BI)V

    .line 310
    :cond_0
    return-void
.end method

.method private b(Landroid/database/Cursor;I)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 338
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid_src/mms/pdu/PduPersister;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(J)[Landroid_src/mms/pdu/PduPart;
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 345
    iget-object v0, p0, Landroid_src/mms/pdu/PduPersister;->q:Landroid/content/Context;

    iget-object v1, p0, Landroid_src/mms/pdu/PduPersister;->r:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/part"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid_src/mms/pdu/PduPersister;->e:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid_src/database/sqlite/SqliteWrapper;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 352
    if-eqz v5, :cond_0

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 461
    :cond_0
    if-eqz v5, :cond_1

    .line 462
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_1
    :goto_0
    return-object v4

    .line 359
    :cond_2
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 361
    new-array v0, v0, [Landroid_src/mms/pdu/PduPart;

    move v3, v7

    .line 362
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 363
    new-instance v6, Landroid_src/mms/pdu/PduPart;

    invoke-direct {v6}, Landroid_src/mms/pdu/PduPart;-><init>()V

    .line 364
    const/4 v1, 0x1

    invoke-direct {p0, v5, v1}, Landroid_src/mms/pdu/PduPersister;->a(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v1

    .line 366
    if-eqz v1, :cond_3

    .line 367
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid_src/mms/pdu/PduPart;->a(I)V

    .line 370
    :cond_3
    const/4 v1, 0x2

    invoke-direct {p0, v5, v1}, Landroid_src/mms/pdu/PduPersister;->b(Landroid/database/Cursor;I)[B

    move-result-object v1

    .line 372
    if-eqz v1, :cond_4

    .line 373
    invoke-virtual {v6, v1}, Landroid_src/mms/pdu/PduPart;->d([B)V

    .line 376
    :cond_4
    const/4 v1, 0x3

    invoke-direct {p0, v5, v1}, Landroid_src/mms/pdu/PduPersister;->b(Landroid/database/Cursor;I)[B

    move-result-object v1

    .line 378
    if-eqz v1, :cond_5

    .line 379
    invoke-virtual {v6, v1}, Landroid_src/mms/pdu/PduPart;->b([B)V

    .line 382
    :cond_5
    const/4 v1, 0x4

    invoke-direct {p0, v5, v1}, Landroid_src/mms/pdu/PduPersister;->b(Landroid/database/Cursor;I)[B

    move-result-object v1

    .line 384
    if-eqz v1, :cond_6

    .line 385
    invoke-virtual {v6, v1}, Landroid_src/mms/pdu/PduPart;->c([B)V

    .line 388
    :cond_6
    const/4 v1, 0x5

    invoke-direct {p0, v5, v1}, Landroid_src/mms/pdu/PduPersister;->b(Landroid/database/Cursor;I)[B

    move-result-object v1

    .line 390
    if-eqz v1, :cond_c

    .line 391
    invoke-virtual {v6, v1}, Landroid_src/mms/pdu/PduPart;->e([B)V

    .line 396
    const/4 v2, 0x6

    invoke-direct {p0, v5, v2}, Landroid_src/mms/pdu/PduPersister;->b(Landroid/database/Cursor;I)[B

    move-result-object v2

    .line 398
    if-eqz v2, :cond_7

    .line 399
    invoke-virtual {v6, v2}, Landroid_src/mms/pdu/PduPart;->h([B)V

    .line 402
    :cond_7
    const/4 v2, 0x7

    invoke-direct {p0, v5, v2}, Landroid_src/mms/pdu/PduPersister;->b(Landroid/database/Cursor;I)[B

    move-result-object v2

    .line 404
    if-eqz v2, :cond_8

    .line 405
    invoke-virtual {v6, v2}, Landroid_src/mms/pdu/PduPart;->g([B)V

    .line 409
    :cond_8
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://mms/part/"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 411
    invoke-virtual {v6, v2}, Landroid_src/mms/pdu/PduPart;->a(Landroid/net/Uri;)V

    .line 415
    invoke-static {v1}, Landroid_src/mms/pdu/PduPersister;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-static {v1}, Landroid_src/mms/ContentType;->e(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v1}, Landroid_src/mms/ContentType;->f(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v1}, Landroid_src/mms/ContentType;->g(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 419
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 425
    const-string v8, "text/plain"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "application/smil"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "text/html"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 427
    :cond_9
    const/16 v1, 0x8

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 428
    new-instance v2, Landroid_src/mms/pdu/EncodedStringValue;

    if-eqz v1, :cond_e

    :goto_2
    invoke-direct {v2, v1}, Landroid_src/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid_src/mms/pdu/EncodedStringValue;->b()[B

    move-result-object v1

    .line 430
    const/4 v2, 0x0

    array-length v8, v1

    invoke-virtual {v7, v1, v2, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 456
    :cond_a
    :goto_3
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid_src/mms/pdu/PduPart;->a([B)V

    .line 458
    :cond_b
    add-int/lit8 v1, v3, 0x1

    aput-object v6, v0, v3

    move v3, v1

    .line 459
    goto/16 :goto_1

    .line 393
    :cond_c
    new-instance v0, Landroid_src/mms/MmsException;

    const-string v1, "Content-Type must be set."

    invoke-direct {v0, v1}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_d

    .line 462
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0

    .line 428
    :cond_e
    :try_start_2
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 434
    :cond_f
    :try_start_3
    iget-object v1, p0, Landroid_src/mms/pdu/PduPersister;->r:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .line 436
    const/16 v2, 0x100

    :try_start_4
    new-array v8, v2, [B

    .line 437
    invoke-virtual {v1, v8}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 438
    :goto_4
    if-ltz v2, :cond_10

    .line 439
    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 440
    invoke-virtual {v1, v8}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v2

    goto :goto_4

    .line 447
    :cond_10
    if-eqz v1, :cond_a

    .line 449
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 450
    :catch_0
    move-exception v1

    .line 451
    :try_start_6
    const-string v2, "PduPersister"

    const-string v8, "Failed to close stream"

    invoke-static {v2, v8, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 442
    :catch_1
    move-exception v0

    .line 443
    :goto_5
    :try_start_7
    const-string v1, "PduPersister"

    const-string v2, "Failed to load part data"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 444
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 445
    new-instance v1, Landroid_src/mms/MmsException;

    invoke-direct {v1, v0}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 447
    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v4, :cond_11

    .line 449
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 452
    :cond_11
    :goto_7
    :try_start_9
    throw v0

    .line 450
    :catch_2
    move-exception v1

    .line 451
    const-string v2, "PduPersister"

    const-string v3, "Failed to close stream"

    invoke-static {v2, v3, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    .line 461
    :cond_12
    if-eqz v5, :cond_13

    .line 462
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_13
    move-object v4, v0

    .line 466
    goto/16 :goto_0

    .line 447
    :catchall_2
    move-exception v0

    move-object v4, v1

    goto :goto_6

    .line 442
    :catch_3
    move-exception v0

    move-object v4, v1

    goto :goto_5
.end method

.method private c(Landroid/database/Cursor;ILandroid_src/mms/pdu/PduHeaders;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 317
    invoke-virtual {p3, v0, p4}, Landroid_src/mms/pdu/PduHeaders;->a(II)V

    .line 319
    :cond_0
    return-void
.end method

.method private d(Landroid/database/Cursor;ILandroid_src/mms/pdu/PduHeaders;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 326
    invoke-virtual {p3, v0, v1, p4}, Landroid_src/mms/pdu/PduHeaders;->a(JI)V

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)Landroid/database/Cursor;
    .locals 7
    .parameter

    .prologue
    .line 1271
    sget-object v0, Landroid_src/provider/Telephony$MmsSms$PendingMessages;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1272
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1274
    const-string v4, "err_type < ? AND due_time <= ?"

    .line 1277
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1282
    iget-object v0, p0, Landroid_src/mms/pdu/PduPersister;->q:Landroid/content/Context;

    iget-object v1, p0, Landroid_src/mms/pdu/PduPersister;->r:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v6, "due_time"

    invoke-static/range {v0 .. v6}, Landroid_src/database/sqlite/SqliteWrapper;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1212
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 1213
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 1214
    new-instance v0, Landroid_src/mms/MmsException;

    const-string v1, "Error! ID of the message: -1."

    invoke-direct {v0, v1}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1218
    :cond_0
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1219
    if-nez v0, :cond_1

    .line 1220
    new-instance v0, Landroid_src/mms/MmsException;

    const-string v1, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v1}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1228
    const-string v1, "msg_box"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1229
    iget-object v0, p0, Landroid_src/mms/pdu/PduPersister;->q:Landroid/content/Context;

    iget-object v1, p0, Landroid_src/mms/pdu/PduPersister;->r:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid_src/database/sqlite/SqliteWrapper;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1230
    invoke-static {p2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid_src/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 1030
    if-nez p2, :cond_0

    .line 1031
    new-instance v0, Landroid_src/mms/MmsException;

    const-string v1, "Uri may not be null."

    invoke-direct {v0, v1}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1034
    :cond_0
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1035
    if-nez v0, :cond_1

    .line 1036
    new-instance v0, Landroid_src/mms/MmsException;

    const-string v1, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v1}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :cond_1
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->b:Landroid_src/mms/util/PduCache;

    invoke-virtual {v0, p2}, Landroid_src/mms/util/PduCache;->a(Landroid/net/Uri;)Landroid_src/mms/util/PduCacheEntry;

    .line 1044
    invoke-virtual {p1}, Landroid_src/mms/pdu/GenericPdu;->e()Landroid_src/mms/pdu/PduHeaders;

    move-result-object v2

    .line 1046
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1049
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1050
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1051
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1052
    invoke-virtual {v2, v1}, Landroid_src/mms/pdu/PduHeaders;->c(I)Landroid_src/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 1053
    if-eqz v5, :cond_2

    .line 1054
    sget-object v6, Landroid_src/mms/pdu/PduPersister;->l:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1055
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5}, Landroid_src/mms/pdu/EncodedStringValue;->b()[B

    move-result-object v6

    invoke-static {v6}, Landroid_src/mms/pdu/PduPersister;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v5}, Landroid_src/mms/pdu/EncodedStringValue;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1060
    :cond_3
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1061
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1062
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid_src/mms/pdu/PduHeaders;->b(I)[B

    move-result-object v1

    .line 1063
    if-eqz v1, :cond_4

    .line 1064
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroid_src/mms/pdu/PduPersister;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1068
    :cond_5
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1069
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1070
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid_src/mms/pdu/PduHeaders;->a(I)I

    move-result v1

    .line 1071
    if-eqz v1, :cond_6

    .line 1072
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1076
    :cond_7
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1077
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1078
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid_src/mms/pdu/PduHeaders;->e(I)J

    move-result-wide v5

    .line 1079
    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_8

    .line 1080
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    .line 1084
    :cond_9
    new-instance v6, Ljava/util/HashMap;

    sget-object v0, Landroid_src/mms/pdu/PduPersister;->c:[I

    array-length v0, v0

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1087
    sget-object v4, Landroid_src/mms/pdu/PduPersister;->c:[I

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, v5, :cond_c

    aget v7, v4, v1

    .line 1088
    const/4 v0, 0x0

    .line 1089
    const/16 v8, 0x89

    if-ne v7, v8, :cond_b

    .line 1090
    invoke-virtual {v2, v7}, Landroid_src/mms/pdu/PduHeaders;->c(I)Landroid_src/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 1091
    if-eqz v8, :cond_a

    .line 1092
    const/4 v0, 0x1

    new-array v0, v0, [Landroid_src/mms/pdu/EncodedStringValue;

    .line 1093
    const/4 v9, 0x0

    aput-object v8, v0, v9

    .line 1098
    :cond_a
    :goto_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1096
    :cond_b
    invoke-virtual {v2, v7}, Landroid_src/mms/pdu/PduHeaders;->d(I)[Landroid_src/mms/pdu/EncodedStringValue;

    move-result-object v0

    goto :goto_5

    .line 1101
    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1102
    const-wide v0, 0x7fffffffffffffffL

    .line 1103
    invoke-virtual {p1}, Landroid_src/mms/pdu/GenericPdu;->f()I

    move-result v4

    .line 1108
    const/16 v5, 0x82

    if-eq v4, v5, :cond_d

    const/16 v5, 0x84

    if-eq v4, v5, :cond_d

    const/16 v5, 0x80

    if-ne v4, v5, :cond_12

    .line 1113
    :cond_d
    iget-object v0, p0, Landroid_src/mms/pdu/PduPersister;->q:Landroid/content/Context;

    invoke-static {v0}, Landroid_src/mms/ui/MessageUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    const/4 v0, 0x0

    .line 1116
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move-object v1, v0

    .line 1141
    :goto_6
    if-eqz v1, :cond_11

    .line 1142
    array-length v4, v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v4, :cond_11

    aget-object v5, v1, v0

    .line 1143
    if-eqz v5, :cond_e

    .line 1144
    invoke-virtual {v5}, Landroid_src/mms/pdu/EncodedStringValue;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1142
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1119
    :pswitch_1
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1120
    const/16 v0, 0x97

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid_src/mms/pdu/EncodedStringValue;

    .line 1121
    if-eqz v0, :cond_10

    .line 1122
    array-length v4, v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v4, :cond_10

    aget-object v5, v0, v1

    .line 1123
    if-eqz v5, :cond_f

    .line 1124
    invoke-virtual {v5}, Landroid_src/mms/pdu/EncodedStringValue;->c()Ljava/lang/String;

    move-result-object v5

    .line 1125
    iget-object v7, p0, Landroid_src/mms/pdu/PduPersister;->q:Landroid/content/Context;

    invoke-static {v7, v5}, Landroid_src/mms/ui/MessageUtils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 1126
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1122
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1133
    :cond_10
    :pswitch_2
    const/16 v0, 0x89

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid_src/mms/pdu/EncodedStringValue;

    move-object v1, v0

    .line 1134
    goto :goto_6

    .line 1136
    :pswitch_3
    const/16 v0, 0x97

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid_src/mms/pdu/EncodedStringValue;

    move-object v1, v0

    goto :goto_6

    .line 1148
    :cond_11
    iget-object v0, p0, Landroid_src/mms/pdu/PduPersister;->q:Landroid/content/Context;

    invoke-static {v0, v2}, Landroid_src/provider/Telephony$Threads;->a(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v0

    .line 1150
    :cond_12
    const-string v2, "thread_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1156
    instance-of v0, p1, Landroid_src/mms/pdu/MultimediaMessagePdu;

    if-eqz v0, :cond_13

    .line 1157
    check-cast p1, Landroid_src/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {p1}, Landroid_src/mms/pdu/MultimediaMessagePdu;->a()Landroid_src/mms/pdu/PduBody;

    move-result-object v1

    .line 1159
    if-eqz v1, :cond_13

    .line 1160
    invoke-virtual {v1}, Landroid_src/mms/pdu/PduBody;->b()I

    move-result v2

    .line 1161
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_13

    .line 1162
    invoke-virtual {v1, v0}, Landroid_src/mms/pdu/PduBody;->a(I)Landroid_src/mms/pdu/PduPart;

    move-result-object v7

    .line 1163
    invoke-virtual {p0, v7, v4, v5}, Landroid_src/mms/pdu/PduPersister;->a(Landroid_src/mms/pdu/PduPart;J)Landroid/net/Uri;

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1168
    :cond_13
    iget-object v0, p0, Landroid_src/mms/pdu/PduPersister;->q:Landroid/content/Context;

    iget-object v1, p0, Landroid_src/mms/pdu/PduPersister;->r:Landroid/content/ContentResolver;

    invoke-static {v0, v1, p2, v3}, Landroid_src/database/sqlite/SqliteWrapper;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1169
    if-nez v0, :cond_14

    .line 1170
    new-instance v0, Landroid_src/mms/MmsException;

    const-string v1, "persist() failed: return null."

    invoke-direct {v0, v1}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1175
    :cond_14
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 1176
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1177
    const-string v0, "mid"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1178
    iget-object v0, p0, Landroid_src/mms/pdu/PduPersister;->q:Landroid/content/Context;

    iget-object v1, p0, Landroid_src/mms/pdu/PduPersister;->r:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://mms/"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/part"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid_src/database/sqlite/SqliteWrapper;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1189
    sget-object v3, Landroid_src/mms/pdu/PduPersister;->c:[I

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v4, :cond_16

    aget v5, v3, v1

    .line 1190
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid_src/mms/pdu/EncodedStringValue;

    .line 1191
    if-eqz v0, :cond_15

    .line 1192
    invoke-direct {p0, v7, v8, v5, v0}, Landroid_src/mms/pdu/PduPersister;->a(JI[Landroid_src/mms/pdu/EncodedStringValue;)V

    .line 1189
    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 1196
    :cond_16
    return-object v2

    .line 1116
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid_src/mms/pdu/PduPart;J)Landroid/net/Uri;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/part"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 661
    new-instance v3, Landroid/content/ContentValues;

    const/16 v0, 0x8

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 663
    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->d()I

    move-result v0

    .line 664
    if-eqz v0, :cond_0

    .line 665
    const-string v1, "chset"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    :cond_0
    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->g()[B

    move-result-object v0

    if-eqz v0, :cond_7

    .line 670
    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->g()[B

    move-result-object v0

    invoke-static {v0}, Landroid_src/mms/pdu/PduPersister;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 674
    const-string v1, "image/jpg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 675
    const-string v0, "image/jpeg"

    move-object v1, v0

    .line 678
    :goto_0
    const-string v0, "ct"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v0, "application/smil"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    const-string v0, "seq"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    :cond_1
    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->j()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 688
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->j()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 689
    const-string v4, "fn"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_2
    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->i()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 693
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->i()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 694
    const-string v4, "name"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_3
    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->f()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 699
    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->f()[B

    move-result-object v0

    invoke-static {v0}, Landroid_src/mms/pdu/PduPersister;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 700
    const-string v4, "cd"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_4
    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->c()[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 704
    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->c()[B

    move-result-object v0

    invoke-static {v0}, Landroid_src/mms/pdu/PduPersister;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 705
    const-string v4, "cid"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_5
    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->e()[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 709
    invoke-virtual {p1}, Landroid_src/mms/pdu/PduPart;->e()[B

    move-result-object v0

    invoke-static {v0}, Landroid_src/mms/pdu/PduPersister;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 710
    const-string v4, "cl"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :cond_6
    iget-object v0, p0, Landroid_src/mms/pdu/PduPersister;->q:Landroid/content/Context;

    iget-object v4, p0, Landroid_src/mms/pdu/PduPersister;->r:Landroid/content/ContentResolver;

    invoke-static {v0, v4, v2, v3}, Landroid_src/database/sqlite/SqliteWrapper;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 714
    if-nez v0, :cond_8

    .line 715
    new-instance v0, Landroid_src/mms/MmsException;

    const-string v1, "Failed to persist part, return null."

    invoke-direct {v0, v1}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_7
    new-instance v0, Landroid_src/mms/MmsException;

    const-string v1, "MIME type of the part must be set."

    invoke-direct {v0, v1}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_8
    invoke-direct {p0, p1, v0, v1}, Landroid_src/mms/pdu/PduPersister;->a(Landroid_src/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V

    .line 721
    invoke-virtual {p1, v0}, Landroid_src/mms/pdu/PduPart;->a(Landroid/net/Uri;)V

    .line 723
    return-object v0

    :cond_9
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public a(Landroid/net/Uri;)Landroid_src/mms/pdu/GenericPdu;
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 514
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->b:Landroid_src/mms/util/PduCache;

    invoke-virtual {v0, p1}, Landroid_src/mms/util/PduCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_src/mms/util/PduCacheEntry;

    .line 515
    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Landroid_src/mms/util/PduCacheEntry;->a()Landroid_src/mms/pdu/GenericPdu;

    move-result-object v0

    .line 640
    :goto_0
    return-object v0

    .line 519
    :cond_0
    iget-object v0, p0, Landroid_src/mms/pdu/PduPersister;->q:Landroid/content/Context;

    iget-object v1, p0, Landroid_src/mms/pdu/PduPersister;->r:Landroid/content/ContentResolver;

    sget-object v3, Landroid_src/mms/pdu/PduPersister;->d:[Ljava/lang/String;

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid_src/database/sqlite/SqliteWrapper;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 521
    new-instance v3, Landroid_src/mms/pdu/PduHeaders;

    invoke-direct {v3}, Landroid_src/mms/pdu/PduHeaders;-><init>()V

    .line 523
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 528
    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 529
    :cond_1
    new-instance v0, Landroid_src/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 560
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 532
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 533
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 535
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 536
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 537
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2, v1, v3, v0}, Landroid_src/mms/pdu/PduPersister;->a(Landroid/database/Cursor;ILandroid_src/mms/pdu/PduHeaders;I)V

    goto :goto_1

    .line 541
    :cond_4
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 542
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 543
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2, v1, v3, v0}, Landroid_src/mms/pdu/PduPersister;->b(Landroid/database/Cursor;ILandroid_src/mms/pdu/PduHeaders;I)V

    goto :goto_2

    .line 547
    :cond_5
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 548
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 549
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2, v1, v3, v0}, Landroid_src/mms/pdu/PduPersister;->c(Landroid/database/Cursor;ILandroid_src/mms/pdu/PduHeaders;I)V

    goto :goto_3

    .line 553
    :cond_6
    sget-object v0, Landroid_src/mms/pdu/PduPersister;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 554
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 555
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2, v1, v3, v0}, Landroid_src/mms/pdu/PduPersister;->d(Landroid/database/Cursor;ILandroid_src/mms/pdu/PduHeaders;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 559
    :cond_7
    if-eqz v2, :cond_8

    .line 560
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_8
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_9

    .line 566
    new-instance v0, Landroid_src/mms/MmsException;

    const-string v1, "Error! ID of the message: -1."

    invoke-direct {v0, v1}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_9
    invoke-direct {p0, v4, v5, v3}, Landroid_src/mms/pdu/PduPersister;->a(JLandroid_src/mms/pdu/PduHeaders;)V

    .line 572
    const/16 v0, 0x8c

    invoke-virtual {v3, v0}, Landroid_src/mms/pdu/PduHeaders;->a(I)I

    move-result v1

    .line 573
    new-instance v2, Landroid_src/mms/pdu/PduBody;

    invoke-direct {v2}, Landroid_src/mms/pdu/PduBody;-><init>()V

    .line 577
    const/16 v0, 0x84

    if-eq v1, v0, :cond_a

    const/16 v0, 0x80

    if-ne v1, v0, :cond_b

    .line 579
    :cond_a
    invoke-direct {p0, v4, v5}, Landroid_src/mms/pdu/PduPersister;->b(J)[Landroid_src/mms/pdu/PduPart;

    move-result-object v4

    .line 580
    if-eqz v4, :cond_b

    .line 581
    array-length v5, v4

    .line 582
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v5, :cond_b

    .line 583
    aget-object v9, v4, v0

    invoke-virtual {v2, v9}, Landroid_src/mms/pdu/PduBody;->a(Landroid_src/mms/pdu/PduPart;)Z

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 589
    :cond_b
    packed-switch v1, :pswitch_data_0

    .line 634
    new-instance v0, Landroid_src/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized PDU type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :pswitch_0
    new-instance v0, Landroid_src/mms/pdu/NotificationInd;

    invoke-direct {v0, v3}, Landroid_src/mms/pdu/NotificationInd;-><init>(Landroid_src/mms/pdu/PduHeaders;)V

    .line 638
    :goto_6
    new-instance v1, Landroid_src/mms/util/PduCacheEntry;

    invoke-direct {v1, v0, v6, v7, v8}, Landroid_src/mms/util/PduCacheEntry;-><init>(Landroid_src/mms/pdu/GenericPdu;IJ)V

    .line 639
    sget-object v2, Landroid_src/mms/pdu/PduPersister;->b:Landroid_src/mms/util/PduCache;

    invoke-virtual {v2, p1, v1}, Landroid_src/mms/util/PduCache;->a(Landroid/net/Uri;Landroid_src/mms/util/PduCacheEntry;)Z

    goto/16 :goto_0

    .line 594
    :pswitch_1
    new-instance v0, Landroid_src/mms/pdu/DeliveryInd;

    invoke-direct {v0, v3}, Landroid_src/mms/pdu/DeliveryInd;-><init>(Landroid_src/mms/pdu/PduHeaders;)V

    goto :goto_6

    .line 597
    :pswitch_2
    new-instance v0, Landroid_src/mms/pdu/ReadOrigInd;

    invoke-direct {v0, v3}, Landroid_src/mms/pdu/ReadOrigInd;-><init>(Landroid_src/mms/pdu/PduHeaders;)V

    goto :goto_6

    .line 600
    :pswitch_3
    new-instance v0, Landroid_src/mms/pdu/RetrieveConf;

    invoke-direct {v0, v3, v2}, Landroid_src/mms/pdu/RetrieveConf;-><init>(Landroid_src/mms/pdu/PduHeaders;Landroid_src/mms/pdu/PduBody;)V

    goto :goto_6

    .line 603
    :pswitch_4
    new-instance v0, Landroid_src/mms/pdu/SendReq;

    invoke-direct {v0, v3, v2}, Landroid_src/mms/pdu/SendReq;-><init>(Landroid_src/mms/pdu/PduHeaders;Landroid_src/mms/pdu/PduBody;)V

    goto :goto_6

    .line 606
    :pswitch_5
    new-instance v0, Landroid_src/mms/pdu/AcknowledgeInd;

    invoke-direct {v0, v3}, Landroid_src/mms/pdu/AcknowledgeInd;-><init>(Landroid_src/mms/pdu/PduHeaders;)V

    goto :goto_6

    .line 609
    :pswitch_6
    new-instance v0, Landroid_src/mms/pdu/NotifyRespInd;

    invoke-direct {v0, v3}, Landroid_src/mms/pdu/NotifyRespInd;-><init>(Landroid_src/mms/pdu/PduHeaders;)V

    goto :goto_6

    .line 612
    :pswitch_7
    new-instance v0, Landroid_src/mms/pdu/ReadRecInd;

    invoke-direct {v0, v3}, Landroid_src/mms/pdu/ReadRecInd;-><init>(Landroid_src/mms/pdu/PduHeaders;)V

    goto :goto_6

    .line 630
    :pswitch_8
    new-instance v0, Landroid_src/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported PDU type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
