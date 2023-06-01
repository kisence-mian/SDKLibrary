.class public Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YybShareInfo"
.end annotation


# instance fields
.field public desc:Ljava/lang/String;

.field public imgPath:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;

.field public isOpenQQShare:Z

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;->isOpenQQShare:Z

    return-void
.end method
