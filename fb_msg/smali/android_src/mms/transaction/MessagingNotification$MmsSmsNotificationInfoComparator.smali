.class final Landroid_src/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid_src/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid_src/mms/transaction/MessagingNotification$1;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    invoke-direct {p0}, Landroid_src/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid_src/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Landroid_src/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-virtual {p2}, Landroid_src/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid_src/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 225
    check-cast p1, Landroid_src/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    check-cast p2, Landroid_src/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    invoke-virtual {p0, p1, p2}, Landroid_src/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;->a(Landroid_src/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Landroid_src/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v0

    return v0
.end method
