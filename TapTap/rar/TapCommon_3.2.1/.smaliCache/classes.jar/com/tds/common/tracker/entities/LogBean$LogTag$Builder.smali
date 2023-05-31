.class public final Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;
.super Lcom/tds/protobuf/GeneratedMessageLite$Builder;
.source "LogBean.java"

# interfaces
.implements Lcom/tds/common/tracker/entities/LogBean$LogTagOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/entities/LogBean$LogTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/tds/common/tracker/entities/LogBean$LogTag;",
        "Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;",
        ">;",
        "Lcom/tds/common/tracker/entities/LogBean$LogTagOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1213
    # getter for: Lcom/tds/common/tracker/entities/LogBean$LogTag;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogTag;
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogTag;->access$2100()Lcom/tds/common/tracker/entities/LogBean$LogTag;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/tds/protobuf/GeneratedMessageLite;)V

    .line 1214
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/tracker/entities/LogBean$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/common/tracker/entities/LogBean$1;

    .line 1206
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKey()Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;
    .registers 2

    .line 1243
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->copyOnWrite()V

    .line 1244
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogTag;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogTag;->clearKey()V
    invoke-static {v0}, Lcom/tds/common/tracker/entities/LogBean$LogTag;->access$2300(Lcom/tds/common/tracker/entities/LogBean$LogTag;)V

    .line 1245
    return-object p0
.end method

.method public clearValue()Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;
    .registers 2

    .line 1283
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->copyOnWrite()V

    .line 1284
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogTag;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogTag;->clearValue()V
    invoke-static {v0}, Lcom/tds/common/tracker/entities/LogBean$LogTag;->access$2600(Lcom/tds/common/tracker/entities/LogBean$LogTag;)V

    .line 1285
    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1221
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogTag;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogTag;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyBytes()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 1228
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogTag;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogTag;->getKeyBytes()Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 1261
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogTag;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogTag;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueBytes()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 1268
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogTag;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogTag;->getValueBytes()Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1235
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->copyOnWrite()V

    .line 1236
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogTag;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogTag;->setKey(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogTag;->access$2200(Lcom/tds/common/tracker/entities/LogBean$LogTag;Ljava/lang/String;)V

    .line 1237
    return-object p0
.end method

.method public setKeyBytes(Lcom/tds/protobuf/ByteString;)Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 1252
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->copyOnWrite()V

    .line 1253
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogTag;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogTag;->setKeyBytes(Lcom/tds/protobuf/ByteString;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogTag;->access$2400(Lcom/tds/common/tracker/entities/LogBean$LogTag;Lcom/tds/protobuf/ByteString;)V

    .line 1254
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1275
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->copyOnWrite()V

    .line 1276
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogTag;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogTag;->setValue(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogTag;->access$2500(Lcom/tds/common/tracker/entities/LogBean$LogTag;Ljava/lang/String;)V

    .line 1277
    return-object p0
.end method

.method public setValueBytes(Lcom/tds/protobuf/ByteString;)Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 1292
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->copyOnWrite()V

    .line 1293
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogTag;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogTag;->setValueBytes(Lcom/tds/protobuf/ByteString;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogTag;->access$2700(Lcom/tds/common/tracker/entities/LogBean$LogTag;Lcom/tds/protobuf/ByteString;)V

    .line 1294
    return-object p0
.end method
