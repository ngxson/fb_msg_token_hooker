.class public Lcom/facebook/common/json/jsonmirror/JMAutogen;
.super Ljava/lang/Object;
.source "JMAutogen.java"


# static fields
.field protected static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/common/json/jsonmirror/JMDictDestination;",
            ">;",
            "Lcom/facebook/common/json/jsonmirror/types/JMDict;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/facebook/common/json/jsonmirror/JMAutogen;

    sput-object v0, Lcom/facebook/common/json/jsonmirror/JMAutogen;->b:Ljava/lang/Class;

    .line 97
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/json/jsonmirror/JMAutogen;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method
