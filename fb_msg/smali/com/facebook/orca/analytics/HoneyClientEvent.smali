.class public Lcom/facebook/orca/analytics/HoneyClientEvent;
.super Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;
.source "HoneyClientEvent.java"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/fasterxml/jackson/databind/node/ObjectNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    const-string v0, "AUTO_SET"

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const-string v0, "client_event"

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->b:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;D)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->h:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    iput-object v0, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->h:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->h:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 64
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->h:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    iput-object v0, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->h:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->h:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 39
    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->c:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->d:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->e:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public e()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 96
    const-string v1, "time"

    invoke-virtual {p0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/orca/analytics/HoneyProtocolUtils;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 98
    const-string v1, "log_type"

    invoke-virtual {p0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 100
    const-string v1, "name"

    iget-object v2, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 102
    iget-object v1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "module"

    iget-object v2, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 107
    const-string v1, "obj_type"

    iget-object v2, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 111
    const-string v1, "obj_id"

    iget-object v2, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 115
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->h:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_4

    .line 119
    const-string v1, "extra"

    iget-object v2, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->h:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 123
    const-string v1, "interface"

    iget-object v2, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 126
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 127
    const-string v1, "bg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 130
    :cond_6
    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->f:Ljava/lang/String;

    .line 84
    return-object p0
.end method
