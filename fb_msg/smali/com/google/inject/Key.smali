.class public Lcom/google/inject/Key;
.super Ljava/lang/Object;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/inject/Key$AnnotationStrategy;

.field private final b:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v0, Lcom/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/google/inject/Key$NullAnnotationStrategy;

    iput-object v0, p0, Lcom/google/inject/Key;->a:Lcom/google/inject/Key$AnnotationStrategy;

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->b(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->b:Lcom/google/inject/TypeLiteral;

    .line 115
    invoke-direct {p0}, Lcom/google/inject/Key;->d()I

    move-result v0

    iput v0, p0, Lcom/google/inject/Key;->c:I

    .line 116
    return-void
.end method

.method private constructor <init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;",
            "Lcom/google/inject/Key$AnnotationStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/google/inject/Key;->a:Lcom/google/inject/Key$AnnotationStrategy;

    .line 131
    invoke-static {p1}, Lcom/google/inject/internal/MoreTypes;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->b:Lcom/google/inject/TypeLiteral;

    .line 132
    invoke-direct {p0}, Lcom/google/inject/Key;->d()I

    move-result v0

    iput v0, p0, Lcom/google/inject/Key;->c:I

    .line 133
    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/google/inject/Key;->a:Lcom/google/inject/Key$AnnotationStrategy;

    .line 124
    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->a(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->b:Lcom/google/inject/TypeLiteral;

    .line 125
    invoke-direct {p0}, Lcom/google/inject/Key;->d()I

    move-result v0

    iput v0, p0, Lcom/google/inject/Key;->c:I

    .line 126
    return-void
.end method

.method static a(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;
    .locals 2
    .parameter

    .prologue
    .line 340
    const-string v0, "annotation"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 342
    invoke-static {v1}, Lcom/google/inject/Key;->c(Ljava/lang/Class;)V

    .line 343
    invoke-static {v1}, Lcom/google/inject/Key;->d(Ljava/lang/Class;)V

    .line 345
    invoke-static {v1}, Lcom/google/inject/internal/Annotations;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Lcom/google/inject/Key$AnnotationTypeStrategy;

    invoke-direct {v0, v1, p0}, Lcom/google/inject/Key$AnnotationTypeStrategy;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    .line 349
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/Key$AnnotationInstanceStrategy;

    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->a(Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/Key$AnnotationInstanceStrategy;-><init>(Ljava/lang/annotation/Annotation;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TS;>;)",
            "Lcom/google/inject/Key",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lcom/google/inject/Key;

    sget-object v1, Lcom/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/google/inject/Key$NullAnnotationStrategy;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static a(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TS;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Key",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->b(Ljava/lang/Class;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static a(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TS;>;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/Key",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->a(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lcom/google/inject/Key;

    sget-object v1, Lcom/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/google/inject/Key$NullAnnotationStrategy;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Key",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->b(Ljava/lang/Class;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lcom/google/inject/Key;

    sget-object v1, Lcom/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/google/inject/Key$NullAnnotationStrategy;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->b(Ljava/lang/Class;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->a(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method static b(Ljava/lang/Class;)Lcom/google/inject/Key$AnnotationStrategy;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Key$AnnotationStrategy;"
        }
    .end annotation

    .prologue
    .line 356
    const-string v0, "annotation type"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-static {p0}, Lcom/google/inject/Key;->c(Ljava/lang/Class;)V

    .line 358
    invoke-static {p0}, Lcom/google/inject/Key;->d(Ljava/lang/Class;)V

    .line 359
    new-instance v0, Lcom/google/inject/Key$AnnotationTypeStrategy;

    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/inject/Key$AnnotationTypeStrategy;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method private static c(Ljava/lang/Class;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->b(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not retained at runtime. Please annotate it with @Retention(RUNTIME)."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 368
    return-void
.end method

.method private d()I
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/inject/Key;->b:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/inject/Key;->a:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static d(Ljava/lang/Class;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->c(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not a binding annotation. Please annotate it with @BindingAnnotation."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 374
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/inject/Key;->b:Lcom/google/inject/TypeLiteral;

    return-object v0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/inject/Key;->a:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/google/inject/Key$AnnotationStrategy;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/inject/Key;->a:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/google/inject/Key$AnnotationStrategy;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    if-ne p1, p0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    instance-of v2, p1, Lcom/google/inject/Key;

    if-nez v2, :cond_2

    move v0, v1

    .line 190
    goto :goto_0

    .line 192
    :cond_2
    check-cast p1, Lcom/google/inject/Key;

    .line 193
    iget-object v2, p0, Lcom/google/inject/Key;->a:Lcom/google/inject/Key$AnnotationStrategy;

    iget-object v3, p1, Lcom/google/inject/Key;->a:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/inject/Key;->b:Lcom/google/inject/TypeLiteral;

    iget-object v3, p1, Lcom/google/inject/Key;->b:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v2, v3}, Lcom/google/inject/TypeLiteral;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/google/inject/Key;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/Key;->b:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", annotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/Key;->a:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
