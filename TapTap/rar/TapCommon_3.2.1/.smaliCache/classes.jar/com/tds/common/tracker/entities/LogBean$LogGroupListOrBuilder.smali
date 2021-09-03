.class public interface abstract Lcom/tds/common/tracker/entities/LogBean$LogGroupListOrBuilder;
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
    name = "LogGroupListOrBuilder"
.end annotation


# virtual methods
.method public abstract getLogGroups(I)Lcom/tds/common/tracker/entities/LogBean$LogGroup;
.end method

.method public abstract getLogGroupsCount()I
.end method

.method public abstract getLogGroupsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroup;",
            ">;"
        }
    .end annotation
.end method
