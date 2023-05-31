.class public interface abstract Lcom/tds/common/tracker/entities/LogBean$LogOrBuilder;
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
    name = "LogOrBuilder"
.end annotation


# virtual methods
.method public abstract getContents(I)Lcom/tds/common/tracker/entities/LogBean$LogContent;
.end method

.method public abstract getContentsCount()I
.end method

.method public abstract getContentsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/LogBean$LogContent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTime()I
.end method
