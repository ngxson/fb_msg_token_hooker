.class public abstract Lcom/facebook/common/json/jsonmirror/types/JMBase;
.super Ljava/lang/Object;
.source "JMBase.java"


# static fields
.field public static final a:Lcom/facebook/common/json/jsonmirror/types/JMString;

.field public static final b:Lcom/facebook/common/json/jsonmirror/types/JMBoolean;

.field public static final c:Lcom/facebook/common/json/jsonmirror/types/JMLong;

.field public static final d:Lcom/facebook/common/json/jsonmirror/types/JMDouble;

.field public static final e:Lcom/facebook/common/json/jsonmirror/types/JMSimpleDict;

.field protected static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/facebook/common/json/jsonmirror/types/JMBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/facebook/common/json/jsonmirror/types/JMString;

    invoke-direct {v0}, Lcom/facebook/common/json/jsonmirror/types/JMString;-><init>()V

    sput-object v0, Lcom/facebook/common/json/jsonmirror/types/JMBase;->a:Lcom/facebook/common/json/jsonmirror/types/JMString;

    .line 13
    new-instance v0, Lcom/facebook/common/json/jsonmirror/types/JMBoolean;

    invoke-direct {v0}, Lcom/facebook/common/json/jsonmirror/types/JMBoolean;-><init>()V

    sput-object v0, Lcom/facebook/common/json/jsonmirror/types/JMBase;->b:Lcom/facebook/common/json/jsonmirror/types/JMBoolean;

    .line 14
    new-instance v0, Lcom/facebook/common/json/jsonmirror/types/JMLong;

    invoke-direct {v0}, Lcom/facebook/common/json/jsonmirror/types/JMLong;-><init>()V

    sput-object v0, Lcom/facebook/common/json/jsonmirror/types/JMBase;->c:Lcom/facebook/common/json/jsonmirror/types/JMLong;

    .line 15
    new-instance v0, Lcom/facebook/common/json/jsonmirror/types/JMDouble;

    invoke-direct {v0}, Lcom/facebook/common/json/jsonmirror/types/JMDouble;-><init>()V

    sput-object v0, Lcom/facebook/common/json/jsonmirror/types/JMBase;->d:Lcom/facebook/common/json/jsonmirror/types/JMDouble;

    .line 16
    new-instance v0, Lcom/facebook/common/json/jsonmirror/types/JMSimpleDict;

    invoke-direct {v0}, Lcom/facebook/common/json/jsonmirror/types/JMSimpleDict;-><init>()V

    sput-object v0, Lcom/facebook/common/json/jsonmirror/types/JMBase;->e:Lcom/facebook/common/json/jsonmirror/types/JMSimpleDict;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/common/json/jsonmirror/types/JMBase;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
