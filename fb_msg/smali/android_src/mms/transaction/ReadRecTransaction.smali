.class public Landroid_src/mms/transaction/ReadRecTransaction;
.super Landroid_src/mms/transaction/Transaction;
.source "ReadRecTransaction.java"


# instance fields
.field private final a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid_src/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid_src/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILandroid_src/mms/transaction/TransactionSettings;)V

    .line 58
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->a:Landroid/net/Uri;

    .line 59
    iput-object p4, p0, Landroid_src/mms/transaction/ReadRecTransaction;->c:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Landroid_src/mms/transaction/RetryScheduler;->a(Landroid/content/Context;)Landroid_src/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid_src/mms/transaction/ReadRecTransaction;->a(Landroid_src/mms/transaction/Observer;)V

    .line 63
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 71
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid_src/mms/pdu/PduPersister;->a(Landroid/content/Context;)Landroid_src/mms/pdu/PduPersister;

    move-result-object v1

    .line 75
    :try_start_0
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->a:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid_src/mms/pdu/PduPersister;->a(Landroid/net/Uri;)Landroid_src/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Landroid_src/mms/pdu/ReadRecInd;

    .line 78
    iget-object v2, p0, Landroid_src/mms/transaction/ReadRecTransaction;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid_src/mms/ui/MessageUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 79
    new-instance v3, Landroid_src/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v2}, Landroid_src/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid_src/mms/pdu/ReadRecInd;->a(Landroid_src/mms/pdu/EncodedStringValue;)V

    .line 82
    new-instance v2, Landroid_src/mms/pdu/PduComposer;

    iget-object v3, p0, Landroid_src/mms/transaction/ReadRecTransaction;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroid_src/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Landroid_src/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Landroid_src/mms/pdu/PduComposer;->a()[B

    move-result-object v0

    .line 83
    invoke-virtual {p0, v0}, Landroid_src/mms/transaction/ReadRecTransaction;->a([B)[B

    .line 85
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->a:Landroid/net/Uri;

    sget-object v2, Landroid_src/provider/Telephony$Mms$Sent;->a:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid_src/mms/pdu/PduPersister;->a(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 86
    iget-object v1, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid_src/mms/transaction/TransactionState;->a(I)V

    .line 87
    iget-object v1, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    invoke-virtual {v1, v0}, Landroid_src/mms/transaction/TransactionState;->a(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid_src/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    invoke-virtual {v0}, Landroid_src/mms/transaction/TransactionState;->a()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 102
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    invoke-virtual {v0, v5}, Landroid_src/mms/transaction/TransactionState;->a(I)V

    .line 103
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    iget-object v1, p0, Landroid_src/mms/transaction/ReadRecTransaction;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid_src/mms/transaction/TransactionState;->a(Landroid/net/Uri;)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid_src/mms/transaction/ReadRecTransaction;->c()V

    .line 107
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 101
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    invoke-virtual {v0}, Landroid_src/mms/transaction/TransactionState;->a()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 102
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    invoke-virtual {v0, v5}, Landroid_src/mms/transaction/TransactionState;->a(I)V

    .line 103
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    iget-object v1, p0, Landroid_src/mms/transaction/ReadRecTransaction;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid_src/mms/transaction/TransactionState;->a(Landroid/net/Uri;)V

    .line 105
    :cond_1
    invoke-virtual {p0}, Landroid_src/mms/transaction/ReadRecTransaction;->c()V

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 101
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    invoke-virtual {v0}, Landroid_src/mms/transaction/TransactionState;->a()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 102
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    invoke-virtual {v0, v5}, Landroid_src/mms/transaction/TransactionState;->a(I)V

    .line 103
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    iget-object v1, p0, Landroid_src/mms/transaction/ReadRecTransaction;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid_src/mms/transaction/TransactionState;->a(Landroid/net/Uri;)V

    .line 105
    :cond_2
    invoke-virtual {p0}, Landroid_src/mms/transaction/ReadRecTransaction;->c()V

    goto :goto_0

    .line 96
    :catch_2
    move-exception v0

    .line 101
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    invoke-virtual {v0}, Landroid_src/mms/transaction/TransactionState;->a()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 102
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    invoke-virtual {v0, v5}, Landroid_src/mms/transaction/TransactionState;->a(I)V

    .line 103
    iget-object v0, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    iget-object v1, p0, Landroid_src/mms/transaction/ReadRecTransaction;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid_src/mms/transaction/TransactionState;->a(Landroid/net/Uri;)V

    .line 105
    :cond_3
    invoke-virtual {p0}, Landroid_src/mms/transaction/ReadRecTransaction;->c()V

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    invoke-virtual {v1}, Landroid_src/mms/transaction/TransactionState;->a()I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 102
    iget-object v1, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    invoke-virtual {v1, v5}, Landroid_src/mms/transaction/TransactionState;->a(I)V

    .line 103
    iget-object v1, p0, Landroid_src/mms/transaction/ReadRecTransaction;->d:Landroid_src/mms/transaction/TransactionState;

    iget-object v2, p0, Landroid_src/mms/transaction/ReadRecTransaction;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid_src/mms/transaction/TransactionState;->a(Landroid/net/Uri;)V

    .line 105
    :cond_4
    invoke-virtual {p0}, Landroid_src/mms/transaction/ReadRecTransaction;->c()V

    throw v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x3

    return v0
.end method
