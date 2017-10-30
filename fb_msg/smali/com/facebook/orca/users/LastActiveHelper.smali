.class public Lcom/facebook/orca/users/LastActiveHelper;
.super Ljava/lang/Object;
.source "LastActiveHelper.java"


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/orca/users/LastActiveHelper;->a:Landroid/content/res/Resources;

    .line 36
    return-void
.end method


# virtual methods
.method public a(JZLcom/facebook/orca/presence/Availability;)J
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 39
    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 53
    :goto_0
    return-wide v0

    .line 44
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 46
    sget-object v4, Lcom/facebook/orca/presence/Availability;->AVAILABLE:Lcom/facebook/orca/presence/Availability;

    if-eq p4, v4, :cond_1

    if-eqz p3, :cond_3

    const-wide/32 v4, 0x36ee80

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 48
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_2
    :goto_1
    move-wide v0, p1

    .line 53
    goto :goto_0

    .line 50
    :cond_3
    const-wide/32 v4, 0x14997000

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move-wide p1, v0

    .line 51
    goto :goto_1
.end method

.method public a(J)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x3c

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 90
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 94
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 95
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 96
    div-int/lit8 v1, v0, 0x3c

    .line 97
    div-int/lit8 v2, v1, 0x3c

    .line 98
    div-int/lit8 v3, v2, 0x18

    .line 100
    if-ge v0, v6, :cond_1

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->presence_active_now:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    if-ne v1, v4, :cond_2

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->presence_active_one_min_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_2
    if-ge v1, v6, :cond_3

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->a:Landroid/content/res/Resources;

    sget v2, Lcom/facebook/R$string;->presence_active_x_mins_ago:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_3
    if-ne v2, v4, :cond_4

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->presence_active_one_hour_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_4
    const/16 v0, 0x18

    if-ge v2, v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->presence_active_x_hours_ago:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_5
    if-ne v3, v4, :cond_6

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->presence_active_one_day_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->presence_active_x_days_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/users/LastActive;Lcom/facebook/orca/presence/PresenceState;Lcom/facebook/orca/users/LastActiveHelper$LastActiveFormat;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/LastActive;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/orca/users/LastActive;->b()Z

    move-result v2

    invoke-virtual {p2}, Lcom/facebook/orca/presence/PresenceState;->a()Lcom/facebook/orca/presence/Availability;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/orca/users/LastActiveHelper;->a(JZLcom/facebook/orca/presence/Availability;)J

    move-result-wide v0

    .line 77
    sget-object v2, Lcom/facebook/orca/users/LastActiveHelper$LastActiveFormat;->SHORT:Lcom/facebook/orca/users/LastActiveHelper$LastActiveFormat;

    if-ne v2, p3, :cond_1

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/users/LastActiveHelper;->b(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/users/LastActiveHelper;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(J)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x3c

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 123
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    .line 127
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 128
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 129
    div-int/lit8 v1, v0, 0x3c

    .line 130
    div-int/lit8 v2, v1, 0x3c

    .line 131
    div-int/lit8 v3, v2, 0x18

    .line 133
    if-ge v0, v6, :cond_1

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->short_active_x_mins_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_1
    if-ge v1, v6, :cond_2

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->a:Landroid/content/res/Resources;

    sget v2, Lcom/facebook/R$string;->short_active_x_mins_ago:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_2
    const/16 v0, 0x18

    if-ge v2, v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->short_active_x_hours_ago:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->short_active_x_days_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
