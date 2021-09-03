.class public interface abstract Lcom/tds/common/tracker/entities/LogBean$LogGroupOrBuilder;
.super Ljava/lang/Object;
.source "LogBean.java"

# interfaces
.implements Lcom/tds/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/entities/LogBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogGroupOrBuilder"
.end annotation


# virtual methods
.method public abstract getCategory()Ljava/lang/String;
.end method

.method public abstract getCategoryBytes()Lcom/tds/protobuf/ByteString;
.end method

.method public abstract getLogTags(I)Lcom/tds/common/tracker/entities/LogBean$LogTag;
.end method

.method public abstract getLogTagsCount()I
.end method

.method public abstract getLogTagsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/LogBean$LogTag;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLogs(I)Lcom/tds/common/tracker/entities/LogBean$Log;
.end method

.method public abstract getLogsCount()I
.end method

.method public abstract getLogsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/LogBean$Log;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMachineUUID()Ljava/lang/String;
.end method

.method public abstract getMachineUUIDBytes()Lcom/tds/protobuf/ByteString;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getSourceBytes()Lcom/tds/protobuf/ByteString;
.end method

.method public abstract getTopic()Ljava/lang/String;
.end method

.method public abstract getTopicBytes()Lcom/tds/protobuf/ByteString;
.end method
