.class public Lcom/tds/common/tracker/model/PageModel;
.super Ljava/lang/Object;
.source "PageModel.java"

# interfaces
.implements Lcom/tds/common/tracker/model/BaseTrackModel;


# static fields
.field private static final PARAM_PAGE_ACTION:Ljava/lang/String; = "page_action"

.field private static final PARAM_PAGE_ID:Ljava/lang/String; = "page_id"

.field private static final PARAM_PAGE_NAME:Ljava/lang/String; = "page_name"


# instance fields
.field private pageAction:Ljava/lang/String;

.field private pageId:Ljava/lang/String;

.field private pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/tracker/exceptions/ModelConvertException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/tds/common/tracker/model/PageModel;->pageId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "page model param pageId empty"

    if-nez v0, :cond_3b

    .line 44
    iget-object v0, p0, Lcom/tds/common/tracker/model/PageModel;->pageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/tds/common/tracker/model/PageModel;->pageId:Ljava/lang/String;

    const-string v2, "page_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lcom/tds/common/tracker/model/PageModel;->pageName:Ljava/lang/String;

    const-string v2, "page_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcom/tds/common/tracker/model/PageModel;->pageAction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/tds/common/tracker/model/PageModel;->pageAction:Ljava/lang/String;

    const-string v2, "page_action"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_34
    return-object v0

    .line 44
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_35
    new-instance v0, Lcom/tds/common/tracker/exceptions/ModelConvertException;

    invoke-direct {v0, v1}, Lcom/tds/common/tracker/exceptions/ModelConvertException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_3b
    new-instance v0, Lcom/tds/common/tracker/exceptions/ModelConvertException;

    invoke-direct {v0, v1}, Lcom/tds/common/tracker/exceptions/ModelConvertException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withPageAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;
    .registers 2
    .param p1, "pageAction"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/tds/common/tracker/model/PageModel;->pageAction:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public withPageId(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;
    .registers 2
    .param p1, "pageId"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/tds/common/tracker/model/PageModel;->pageId:Ljava/lang/String;

    .line 28
    return-object p0
.end method

.method public withPageName(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;
    .registers 2
    .param p1, "pageName"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/tds/common/tracker/model/PageModel;->pageName:Ljava/lang/String;

    .line 33
    return-object p0
.end method
