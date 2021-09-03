.class public final Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;
.super Lcom/tds/protobuf/GeneratedMessageLite$Builder;
.source "LogBean.java"

# interfaces
.implements Lcom/tds/common/tracker/entities/LogBean$LogContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/entities/LogBean$LogContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/tds/common/tracker/entities/LogBean$LogContent;",
        "Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;",
        ">;",
        "Lcom/tds/common/tracker/entities/LogBean$LogContentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 244
    # getter for: Lcom/tds/common/tracker/entities/LogBean$LogContent;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogContent;
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->access$000()Lcom/tds/common/tracker/entities/LogBean$LogContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/tds/protobuf/GeneratedMessageLite;)V

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/tracker/entities/LogBean$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/common/tracker/entities/LogBean$1;

    .line 237
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKey()Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;
    .registers 2

    .line 274
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->copyOnWrite()V

    .line 275
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogContent;->clearKey()V
    invoke-static {v0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->access$200(Lcom/tds/common/tracker/entities/LogBean$LogContent;)V

    .line 276
    return-object p0
.end method

.method public clearValue()Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;
    .registers 2

    .line 314
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->copyOnWrite()V

    .line 315
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogContent;->clearValue()V
    invoke-static {v0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->access$500(Lcom/tds/common/tracker/entities/LogBean$LogContent;)V

    .line 316
    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyBytes()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->getKeyBytes()Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueBytes()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->getValueBytes()Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->copyOnWrite()V

    .line 267
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogContent;->setKey(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->access$100(Lcom/tds/common/tracker/entities/LogBean$LogContent;Ljava/lang/String;)V

    .line 268
    return-object p0
.end method

.method public setKeyBytes(Lcom/tds/protobuf/ByteString;)Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 283
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->copyOnWrite()V

    .line 284
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogContent;->setKeyBytes(Lcom/tds/protobuf/ByteString;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->access$300(Lcom/tds/common/tracker/entities/LogBean$LogContent;Lcom/tds/protobuf/ByteString;)V

    .line 285
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 306
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->copyOnWrite()V

    .line 307
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogContent;->setValue(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->access$400(Lcom/tds/common/tracker/entities/LogBean$LogContent;Ljava/lang/String;)V

    .line 308
    return-object p0
.end method

.method public setValueBytes(Lcom/tds/protobuf/ByteString;)Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 323
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->copyOnWrite()V

    .line 324
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogContent;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogContent;->setValueBytes(Lcom/tds/protobuf/ByteString;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->access$600(Lcom/tds/common/tracker/entities/LogBean$LogContent;Lcom/tds/protobuf/ByteString;)V

    .line 325
    return-object p0
.end method
