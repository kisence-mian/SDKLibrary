.class public Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;
.super Ljava/lang/Object;
.source "CommonJumpLoader.java"

# interfaces
.implements Lcom/mintegral/msdk/system/NoProGuard;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/click/CommonJumpLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JumpLoaderResult"
.end annotation


# static fields
.field public static final CODE_DOWNLOAD:I = 0x3

.field public static final CODE_LINK:I = 0x2

.field public static final CODE_MARKET:I = 0x1

.field public static final CODE_NULL:I = 0x4

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I

.field private content:Ljava/lang/String;

.field private exceptionMsg:Ljava/lang/String;

.field private header:Ljava/lang/String;

.field private is302Jump:Z

.field private jumpDone:Z

.field private msg:Ljava/lang/String;

.field private noticeurl:Ljava/lang/String;

.field private statusCode:I

.field private success:Z

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 369
    iget v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->code:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->exceptionMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeurl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->noticeurl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .prologue
    .line 297
    iget v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->statusCode:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 313
    iget v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isIs302Jump()Z
    .registers 2

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->is302Jump:Z

    return v0
.end method

.method public isSuccess()Z
    .registers 2

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->success:Z

    return v0
.end method

.method public isjumpDone()Z
    .registers 2

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->jumpDone:Z

    return v0
.end method

.method public setCode(I)V
    .registers 2

    .prologue
    .line 373
    iput p1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->code:I

    .line 374
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 341
    iput-object p1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->content:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setExceptionMsg(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 333
    iput-object p1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->exceptionMsg:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 325
    iput-object p1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->header:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setIs302Jump(Z)V
    .registers 2

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->is302Jump:Z

    .line 310
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 365
    iput-object p1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->msg:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setNoticeurl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 349
    iput-object p1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->noticeurl:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setStatusCode(I)V
    .registers 2

    .prologue
    .line 301
    iput p1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->statusCode:I

    .line 302
    return-void
.end method

.method public setSuccess(Z)V
    .registers 2

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->success:Z

    .line 358
    return-void
.end method

.method public setType(I)V
    .registers 2

    .prologue
    .line 317
    iput p1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->type:I

    .line 318
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 381
    iput-object p1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->url:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setjumpDone(Z)V
    .registers 2

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->jumpDone:Z

    .line 390
    return-void
.end method
