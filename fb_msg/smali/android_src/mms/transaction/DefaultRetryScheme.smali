.class public Landroid_src/mms/transaction/DefaultRetryScheme;
.super Landroid_src/mms/transaction/AbstractRetryScheme;
.source "DefaultRetryScheme.java"


# static fields
.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid_src/mms/transaction/DefaultRetryScheme;->b:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0xc0t 0x27t 0x9t 0x0t
        0x40t 0x77t 0x1bt 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p2}, Landroid_src/mms/transaction/AbstractRetryScheme;-><init>(I)V

    .line 38
    iget v0, p0, Landroid_src/mms/transaction/DefaultRetryScheme;->a:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroid_src/mms/transaction/DefaultRetryScheme;->a:I

    .line 39
    iget v0, p0, Landroid_src/mms/transaction/DefaultRetryScheme;->a:I

    sget-object v1, Landroid_src/mms/transaction/DefaultRetryScheme;->b:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid_src/mms/transaction/DefaultRetryScheme;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p0, Landroid_src/mms/transaction/DefaultRetryScheme;->a:I

    .line 43
    return-void

    .line 38
    :cond_0
    iget v0, p0, Landroid_src/mms/transaction/DefaultRetryScheme;->a:I

    goto :goto_0

    .line 39
    :cond_1
    iget v0, p0, Landroid_src/mms/transaction/DefaultRetryScheme;->a:I

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid_src/mms/transaction/DefaultRetryScheme;->b:[I

    array-length v0, v0

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 55
    sget-object v0, Landroid_src/mms/transaction/DefaultRetryScheme;->b:[I

    iget v1, p0, Landroid_src/mms/transaction/DefaultRetryScheme;->a:I

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
