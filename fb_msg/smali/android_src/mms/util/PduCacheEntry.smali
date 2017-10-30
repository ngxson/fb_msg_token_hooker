.class public final Landroid_src/mms/util/PduCacheEntry;
.super Ljava/lang/Object;
.source "PduCacheEntry.java"


# instance fields
.field private final a:Landroid_src/mms/pdu/GenericPdu;

.field private final b:I

.field private final c:J


# direct methods
.method public constructor <init>(Landroid_src/mms/pdu/GenericPdu;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroid_src/mms/util/PduCacheEntry;->a:Landroid_src/mms/pdu/GenericPdu;

    .line 29
    iput p2, p0, Landroid_src/mms/util/PduCacheEntry;->b:I

    .line 30
    iput-wide p3, p0, Landroid_src/mms/util/PduCacheEntry;->c:J

    .line 31
    return-void
.end method


# virtual methods
.method public a()Landroid_src/mms/pdu/GenericPdu;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid_src/mms/util/PduCacheEntry;->a:Landroid_src/mms/pdu/GenericPdu;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Landroid_src/mms/util/PduCacheEntry;->b:I

    return v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Landroid_src/mms/util/PduCacheEntry;->c:J

    return-wide v0
.end method
