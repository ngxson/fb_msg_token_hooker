.class public Lcom/facebook/orca/debug/BLog;
.super Ljava/lang/Object;
.source "BLog.java"


# static fields
.field private static a:Lcom/facebook/orca/debug/FbLog;

.field private static volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    sput v0, Lcom/facebook/orca/debug/BLog;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 0
    .parameter

    .prologue
    .line 48
    sput p0, Lcom/facebook/orca/debug/BLog;->b:I

    .line 49
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 800
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    if-gt v0, p0, :cond_0

    .line 801
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 802
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/debug/FbLog;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lcom/facebook/orca/debug/FbLog;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    sput-object p0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    .line 53
    return-void
.end method

.method public static a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/debug/WtfToken;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 670
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 671
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 672
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p1}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p2}, Lcom/facebook/orca/debug/FbLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    invoke-static {p1}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/debug/WtfToken;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 790
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 791
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 792
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p1}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p2, p3}, Lcom/facebook/orca/debug/FbLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    invoke-static {p1}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/debug/WtfToken;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 715
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 716
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 717
    sget-object v1, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v1, :cond_1

    .line 718
    sget-object v1, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p1}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lcom/facebook/orca/debug/FbLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    invoke-static {p1}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/debug/WtfToken;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 752
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 753
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 754
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p1}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p2}, Lcom/facebook/orca/debug/FbLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    invoke-static {p1}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 89
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/orca/debug/FbLog;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 163
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 164
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/orca/debug/FbLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 126
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v1, :cond_1

    .line 128
    sget-object v1, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/orca/debug/FbLog;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 520
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 521
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 522
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/orca/debug/FbLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 72
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/debug/FbLog;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 253
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 254
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/debug/FbLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 107
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    sget-object v1, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v1, :cond_1

    .line 109
    sget-object v1, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-interface {v1, p0, v0}, Lcom/facebook/orca/debug/FbLog;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 503
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 504
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 505
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/debug/FbLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    if-lt p1, v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 810
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    if-gt v0, p0, :cond_0

    .line 811
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 812
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/debug/FbLog;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 197
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 198
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/orca/debug/FbLog;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 270
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 271
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 272
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/orca/debug/FbLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 234
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 235
    sget-object v1, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v1, :cond_1

    .line 236
    sget-object v1, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/orca/debug/FbLog;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 179
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 180
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 181
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/debug/FbLog;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 361
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 362
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/debug/FbLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 572
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 573
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 574
    sget-object v1, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v1, :cond_1

    .line 575
    sget-object v1, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-interface {v1, p0, v0}, Lcom/facebook/orca/debug/FbLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 304
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 305
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 306
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/orca/debug/FbLog;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 378
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 379
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 380
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/orca/debug/FbLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 341
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 342
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 343
    sget-object v1, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v1, :cond_1

    .line 344
    sget-object v1, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/orca/debug/FbLog;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 287
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 288
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 289
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/debug/FbLog;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 468
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 469
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 470
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/debug/FbLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 412
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 413
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 414
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/orca/debug/FbLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 486
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 487
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 488
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/orca/debug/FbLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 591
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 592
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 593
    sget-object v1, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v1, :cond_1

    .line 594
    sget-object v1, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/orca/debug/FbLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 395
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 396
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 397
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/debug/FbLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 611
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 612
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/debug/FbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 554
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 555
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 556
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/orca/debug/FbLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 628
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 629
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 630
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/orca/debug/FbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 537
    sget v0, Lcom/facebook/orca/debug/BLog;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 538
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    if-eqz v0, :cond_1

    .line 539
    sget-object v0, Lcom/facebook/orca/debug/BLog;->a:Lcom/facebook/orca/debug/FbLog;

    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/debug/FbLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
