.class public Lcom/sigmob/sdk/common/mta/PointEntitySigmob;
.super Lcom/sigmob/sdk/common/mta/PointEntityBase;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/common/mta/PointEntityBase;-><init>()V

    return-void
.end method

.method public static SigmobTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntitySigmob;
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;-><init>()V

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setPlacement_id(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAd_source_channel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaign_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getContent_length()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getContent_type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordinate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getCreative_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCreative_type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent_time()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration_seq()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getEndcard_loading_state()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getError_message()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getExpand()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFile_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->E:Ljava/lang/String;

    return-object v0
.end method

.method public getFile_size()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getFinal_url()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getHttp_code()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_deeplink()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_force()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_truncation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getIscached()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuccess()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->H:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->P:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_mode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->M:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_process()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_time()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getReady_filters()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->O:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getRetry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getSet_close_time()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getSkip_show_time()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getSkip_state()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget_url()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTime_spend()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_duration()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->L:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_time_seq()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->J:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_source_channel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->m:Ljava/lang/String;

    return-void
.end method

.method public setCampaign_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->f:Ljava/lang/String;

    return-void
.end method

.method public setContent_length(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->z:Ljava/lang/String;

    return-void
.end method

.method public setContent_type(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->A:Ljava/lang/String;

    return-void
.end method

.method public setCoordinate(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->l:Ljava/lang/String;

    return-void
.end method

.method public setCreative_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->e:Ljava/lang/String;

    return-void
.end method

.method public setCreative_type(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->n:Ljava/lang/String;

    return-void
.end method

.method public setCurrent_time(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->s:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->D:Ljava/lang/String;

    return-void
.end method

.method public setDuration_seq(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->I:Ljava/lang/String;

    return-void
.end method

.method public setEndcard_loading_state(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->N:Ljava/lang/String;

    return-void
.end method

.method public setError_message(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->u:Ljava/lang/String;

    return-void
.end method

.method public setExpand(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->d:Ljava/lang/String;

    return-void
.end method

.method public setFile_name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->E:Ljava/lang/String;

    return-void
.end method

.method public setFile_size(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->F:Ljava/lang/String;

    return-void
.end method

.method public setFinal_url(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->h:Ljava/lang/String;

    return-void
.end method

.method public setHttp_code(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->w:Ljava/lang/String;

    return-void
.end method

.method public setIs_deeplink(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->j:Ljava/lang/String;

    return-void
.end method

.method public setIs_force(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->p:Ljava/lang/String;

    return-void
.end method

.method public setIs_truncation(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->q:Ljava/lang/String;

    return-void
.end method

.method public setIscached(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->G:Ljava/lang/String;

    return-void
.end method

.method public setIssuccess(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->H:Ljava/lang/String;

    return-void
.end method

.method public setPermission(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->P:Ljava/lang/String;

    return-void
.end method

.method public setPlay_mode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->M:Ljava/lang/String;

    return-void
.end method

.method public setPlay_process(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->k:Ljava/lang/String;

    return-void
.end method

.method public setPlay_time(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->r:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->c:Ljava/lang/String;

    return-void
.end method

.method public setProduct_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->i:Ljava/lang/String;

    return-void
.end method

.method public setReady_filters(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->O:Ljava/lang/String;

    return-void
.end method

.method public setRequest_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->b:Ljava/lang/String;

    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->x:Ljava/lang/String;

    return-void
.end method

.method public setRetry(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->B:Ljava/lang/String;

    return-void
.end method

.method public setSet_close_time(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->t:Ljava/lang/String;

    return-void
.end method

.method public setSkip_show_time(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->o:Ljava/lang/String;

    return-void
.end method

.method public setSkip_state(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->K:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->C:Ljava/lang/String;

    return-void
.end method

.method public setTarget_url(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->g:Ljava/lang/String;

    return-void
.end method

.method public setTime_spend(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->y:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->v:Ljava/lang/String;

    return-void
.end method

.method public setVideo_duration(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->L:Ljava/lang/String;

    return-void
.end method

.method public setVideo_time_seq(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->J:Ljava/lang/String;

    return-void
.end method
