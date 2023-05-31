.class public Lcom/tds/protobuf/UninitializedMessageException;
.super Ljava/lang/RuntimeException;
.source "UninitializedMessageException.java"


# static fields
.field private static final serialVersionUID:J = -0x679fdd3b29a24eb3L


# instance fields
.field private final missingFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/protobuf/MessageLite;)V
    .registers 3
    .param p1, "message"    # Lcom/tds/protobuf/MessageLite;

    .line 53
    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/protobuf/UninitializedMessageException;->missingFields:Ljava/util/List;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p1, "missingFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/tds/protobuf/UninitializedMessageException;->buildDescription(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/tds/protobuf/UninitializedMessageException;->missingFields:Ljava/util/List;

    .line 61
    return-void
.end method

.method private static buildDescription(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 86
    .local p0, "missingFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message missing required fields: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "description":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 89
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    .local v3, "field":Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 91
    const/4 v1, 0x0

    goto :goto_21

    .line 93
    :cond_1c
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :goto_21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .end local v3    # "field":Ljava/lang/String;
    goto :goto_c

    .line 97
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public asInvalidProtocolBufferException()Lcom/tds/protobuf/InvalidProtocolBufferException;
    .registers 3

    .line 81
    new-instance v0, Lcom/tds/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Lcom/tds/protobuf/UninitializedMessageException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMissingFields()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/tds/protobuf/UninitializedMessageException;->missingFields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
