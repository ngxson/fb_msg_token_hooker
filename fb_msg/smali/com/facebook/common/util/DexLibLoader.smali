.class public Lcom/facebook/common/util/DexLibLoader;
.super Ljava/lang/Object;
.source "DexLibLoader.java"


# static fields
.field private static final a:Lcom/facebook/common/util/DexLibLoader$DexSpec;

.field private static final b:Lcom/facebook/common/util/DexLibLoader$DexSpec;

.field private static final c:Lcom/facebook/common/util/DexLibLoader$DexSpec;

.field private static final d:Lcom/facebook/common/util/DexLibLoader$DexSpec;

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/util/DexLibLoader$DexSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 61
    new-instance v0, Lcom/facebook/common/util/DexLibLoader$DexSpec;

    const-string v1, "guava-10.0.1-fork.dex"

    const-string v3, "com.google.common.base.Charsets"

    const-string v4, "guava"

    invoke-direct/range {v0 .. v5}, Lcom/facebook/common/util/DexLibLoader$DexSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/common/util/DexLibLoader$1;)V

    sput-object v0, Lcom/facebook/common/util/DexLibLoader;->a:Lcom/facebook/common/util/DexLibLoader$DexSpec;

    .line 70
    new-instance v0, Lcom/facebook/common/util/DexLibLoader$DexSpec;

    const-string v1, "jackson-core-2.0.5.dex"

    const-string v3, "com.fasterxml.jackson.core.JsonParser"

    const-string v4, "jackson-core"

    invoke-direct/range {v0 .. v5}, Lcom/facebook/common/util/DexLibLoader$DexSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/common/util/DexLibLoader$1;)V

    sput-object v0, Lcom/facebook/common/util/DexLibLoader;->b:Lcom/facebook/common/util/DexLibLoader$DexSpec;

    .line 76
    new-instance v0, Lcom/facebook/common/util/DexLibLoader$DexSpec;

    const-string v1, "jackson-databind-2.0.5.dex"

    const-string v3, "com.fasterxml.jackson.databind.JsonNode"

    const-string v4, "jackson-databind"

    invoke-direct/range {v0 .. v5}, Lcom/facebook/common/util/DexLibLoader$DexSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/common/util/DexLibLoader$1;)V

    sput-object v0, Lcom/facebook/common/util/DexLibLoader;->c:Lcom/facebook/common/util/DexLibLoader$DexSpec;

    .line 82
    new-instance v0, Lcom/facebook/common/util/DexLibLoader$DexSpec;

    const-string v1, "jackson-datatype-guava-2.0.4.dex"

    const-string v3, "com.fasterxml.jackson.datatype.guava.GuavaModule"

    const-string v4, "jackson-datatype-guava"

    invoke-direct/range {v0 .. v5}, Lcom/facebook/common/util/DexLibLoader$DexSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/common/util/DexLibLoader$1;)V

    sput-object v0, Lcom/facebook/common/util/DexLibLoader;->d:Lcom/facebook/common/util/DexLibLoader$DexSpec;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    sget-object v1, Lcom/facebook/common/util/DexLibLoader;->a:Lcom/facebook/common/util/DexLibLoader$DexSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v1, Lcom/facebook/common/util/DexLibLoader;->b:Lcom/facebook/common/util/DexLibLoader$DexSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v1, Lcom/facebook/common/util/DexLibLoader;->c:Lcom/facebook/common/util/DexLibLoader$DexSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v1, Lcom/facebook/common/util/DexLibLoader;->d:Lcom/facebook/common/util/DexLibLoader$DexSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/util/DexLibLoader;->e:Ljava/util/List;

    .line 98
    return-void
.end method
