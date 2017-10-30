.class public final enum Lcom/facebook/widget/MapImage$MapPlaceholder;
.super Ljava/lang/Enum;
.source "MapImage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/widget/MapImage$MapPlaceholder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/widget/MapImage$MapPlaceholder;

.field public static final enum NO_IMAGE:Lcom/facebook/widget/MapImage$MapPlaceholder;

.field public static final enum WORLD_MAP:Lcom/facebook/widget/MapImage$MapPlaceholder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/facebook/widget/MapImage$MapPlaceholder;

    const-string v1, "NO_IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/widget/MapImage$MapPlaceholder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/MapImage$MapPlaceholder;->NO_IMAGE:Lcom/facebook/widget/MapImage$MapPlaceholder;

    .line 33
    new-instance v0, Lcom/facebook/widget/MapImage$MapPlaceholder;

    const-string v1, "WORLD_MAP"

    invoke-direct {v0, v1, v3}, Lcom/facebook/widget/MapImage$MapPlaceholder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/MapImage$MapPlaceholder;->WORLD_MAP:Lcom/facebook/widget/MapImage$MapPlaceholder;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/widget/MapImage$MapPlaceholder;

    sget-object v1, Lcom/facebook/widget/MapImage$MapPlaceholder;->NO_IMAGE:Lcom/facebook/widget/MapImage$MapPlaceholder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/widget/MapImage$MapPlaceholder;->WORLD_MAP:Lcom/facebook/widget/MapImage$MapPlaceholder;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/widget/MapImage$MapPlaceholder;->$VALUES:[Lcom/facebook/widget/MapImage$MapPlaceholder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/MapImage$MapPlaceholder;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/facebook/widget/MapImage$MapPlaceholder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/MapImage$MapPlaceholder;

    return-object v0
.end method

.method public static values()[Lcom/facebook/widget/MapImage$MapPlaceholder;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/facebook/widget/MapImage$MapPlaceholder;->$VALUES:[Lcom/facebook/widget/MapImage$MapPlaceholder;

    invoke-virtual {v0}, [Lcom/facebook/widget/MapImage$MapPlaceholder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/widget/MapImage$MapPlaceholder;

    return-object v0
.end method
