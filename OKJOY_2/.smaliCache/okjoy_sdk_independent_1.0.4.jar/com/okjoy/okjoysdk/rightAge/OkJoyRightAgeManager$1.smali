.class public final Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->showRightView(Landroid/app/Activity;Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$listener:Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;)V
    .registers 3

    iput-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;->val$listener:Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;->val$listener:Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;->onContinue()V

    :cond_7
    return-void
.end method

.method public onSuccess(Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel;)V
    .registers 5

    iget-object v0, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel$OkJoyDataModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel$OkJoyDataModel;->getIscopyright()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel$OkJoyDataModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel$OkJoyDataModel;->getAgetype()Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b6

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const/4 v0, 0x1

    sput-boolean v0, Lokjoy/e/b;->g:Z

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string p1, "joy_age_twelve_plus"

    goto :goto_38

    :cond_2b
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    const-string p1, "joy_age_sixteen_plus"

    goto :goto_38

    :cond_36
    const-string p1, "joy_age_eight_plus"

    :goto_38
    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->getInstance()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->show()V

    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->getInstance()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->getmService()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;

    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->getAgeFloatWindowView()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->setImageResName(Ljava/lang/String;)V

    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->getInstance()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->getmService()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;

    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->getAgeFloatWindowView()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    move-result-object p1

    new-instance v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1$1;

    invoke-direct {v0, p0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1$1;-><init>(Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;)V

    invoke-virtual {p1, v0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->setOnListener(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$OkJoyAgeFloatWindowViewOnListener;)V

    new-instance p1, Lokjoy/t/c;

    iget-object v0, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lokjoy/t/c;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->tipsDialog:Lokjoy/t/c;
    invoke-static {p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->access$002(Lokjoy/t/c;)Lokjoy/t/c;

    .line 1
    sget-object p1, Lokjoy/m/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_73

    :cond_72
    goto :goto_97

    :cond_73
    :goto_73
    sget-object p1, Lokjoy/m/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_72

    sget-object p1, Lokjoy/m/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoModel;->getSite()Ljava/lang/String;

    move-result-object v0

    const-string v2, "login_before_minor_policy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoModel;->getContent()Ljava/lang/String;

    move-result-object p1

    goto :goto_99

    :cond_94
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 2
    :goto_97
    const-string p1, ""

    :goto_99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const-string p1, "\u5982\u679c\u60a8\u662f\u672a\u6210\u5e74\u4eba\uff0c\u8bf7\u5728\u5bb6\u957f\u76d1\u7763\u4e0b\u586b\u5199\u81ea\u5df1\u771f\u5b9e\u7684\u8eab\u4efd\u8bc1\u4fe1\u606f\uff0c\u6839\u636e\u56fd\u5bb6\u65b0\u95fb\u51fa\u7248\u7f72\u53d1\u5e03\u7684\u300a\u5173\u4e8e\u9632\u6b62\u672a\u6210\u5e74\u4eba\u6c89\u8ff7\u7f51\u7edc\u6e38\u620f\u7684\u901a\u77e5\u300b\uff0c\u5bf9\u60a8\u6709\u4ee5\u4e0b\u9650\u5236\uff1a \n\u3010\u6e38\u620f\u767b\u5f55\u3011\n1.\u6bcf\u65e522\u65f6\u81f3\u6b21\u65e58\u65f6\uff0c\u4e0d\u80fd\u767b\u5f55\u6e38\u620f\u3002 \n2.\u6cd5\u5b9a\u8282\u5047\u65e5\u6bcf\u65e5\u7d2f\u8ba1\u4e0d\u5f97\u8d85\u8fc73\u5c0f\u65f6\uff0c\u5176\u4ed6\u65f6\u95f4\u6bcf\u65e5\u7d2f\u8ba1\u4e0d\u5f97\u8d85\u8fc71.5\u5c0f\u65f6\u3002\n\u3010\u6e38\u620f\u5145\u503c \u3011 \n1.\u672a\u6ee18\u5468\u5c81\u7684\u7528\u6237\u4e0d\u5f97\u63d0\u4f9b\u6e38\u620f\u5145\u503c\u670d\u52a1\u3002 \n2.8\u5468\u5c81\u4ee5\u4e0a\u672a\u6ee116\u5468\u5c81\u7684\u7528\u6237\uff0c\u5355\u6b21\u5145\u503c\u91d1\u989d\u4e0d\u5f97\u8d85\u8fc750\u5143\u4eba\u6c11\u5e01\uff0c\u6bcf\u6708\u5145\u503c\u91d1\u989d\u7d2f\u8ba1\u4e0d\u5f97\u8d85\u8fc7200\u5143\u4eba\u6c11\u5e01\u3002\n 3.16\u5468\u5c81\u4ee5\u4e0a\u672a\u6ee118\u5468\u5c81\u7684\u7528\u6237\uff0c\u5355\u6b21\u5145\u503c\u91d1\u989d\u4e0d\u5f97\u8d85\u8fc7100\u5143\u4eba\u6c11\u5e01\uff0c\u6bcf\u6708\u5145\u503c\u91d1\u989d\u7d2f\u8ba1\u4e0d\u5f97\u8d85\u8fc7400\u5143\u4eba\u6c11\u5e01\u3002hhh"

    :cond_a1
    # getter for: Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->tipsDialog:Lokjoy/t/c;
    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->access$000()Lokjoy/t/c;

    move-result-object v0

    .line 3
    iput-object p1, v0, Lokjoy/t/c;->h:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lokjoy/t/c;->show()V

    # getter for: Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->tipsDialog:Lokjoy/t/c;
    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->access$000()Lokjoy/t/c;

    move-result-object p1

    new-instance v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1$2;

    invoke-direct {v0, p0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1$2;-><init>(Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;)V

    .line 5
    iput-object v0, p1, Lokjoy/t/c;->g:Lokjoy/t/c$c;

    goto :goto_c0

    :cond_b6
    nop

    .line 6
    sput-boolean v1, Lokjoy/e/b;->g:Z

    iget-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;->val$listener:Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;

    if-eqz p1, :cond_c0

    invoke-interface {p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;->onContinue()V

    :cond_c0
    :goto_c0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel;

    invoke-virtual {p0, p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;->onSuccess(Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel;)V

    return-void
.end method
