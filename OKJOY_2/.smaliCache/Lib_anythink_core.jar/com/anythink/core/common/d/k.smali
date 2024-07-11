.class public Lcom/anythink/core/common/d/k;
.super Ljava/lang/Object;


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public isSuccess:Z

.field public loseNoticeUrl:Ljava/lang/String;

.field public price:D

.field public token:Ljava/lang/String;

.field public winNoticeUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/anythink/core/common/d/k;->isSuccess:Z

    .line 21
    iput-wide p2, p0, Lcom/anythink/core/common/d/k;->price:D

    .line 22
    iput-object p4, p0, Lcom/anythink/core/common/d/k;->token:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/anythink/core/common/d/k;->winNoticeUrl:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/anythink/core/common/d/k;->loseNoticeUrl:Ljava/lang/String;

    .line 25
    iput-object p7, p0, Lcom/anythink/core/common/d/k;->errorMsg:Ljava/lang/String;

    .line 26
    return-void
.end method
