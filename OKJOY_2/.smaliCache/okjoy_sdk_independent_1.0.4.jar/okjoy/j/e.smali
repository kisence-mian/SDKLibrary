.class public Lokjoy/j/e;
.super Lokjoy/c/b;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

.field public c:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/Button;

.field public f:Landroid/webkit/WebView;

.field public g:Z

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lokjoy/c/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokjoy/j/e;->g:Z

    return-void
.end method

.method public static synthetic a(Lokjoy/j/e;Z)Z
    .registers 2

    iput-boolean p1, p0, Lokjoy/j/e;->g:Z

    return p1
.end method


# virtual methods
.method public final b()V
    .registers 11

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-boolean v0, p0, Lokjoy/j/e;->g:Z

    if-eqz v0, :cond_a9

    const-string v0, "\u652f\u4ed8\u754c\u9762\u5173\u95ed\u524d\uff0c\u8c03\u8d77\u8ba2\u5355\u72b6\u6001\u67e5\u8be2\u63a5\u53e3"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lokjoy/j/e;->b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->getCno()Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-static {v0}, Lokjoy/f/b;->a(Landroid/content/Context;)Lokjoy/f/b;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lokjoy/f/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from order_verify_record where sdkOrderId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_99

    const-string v2, "userId"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gameOrderId"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "productId"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "productName"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "price"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    const-string v7, "payType"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "duration"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    new-instance v9, Lokjoy/k/a;

    invoke-direct {v9}, Lokjoy/k/a;-><init>()V

    .line 4
    iput-object v2, v9, Lokjoy/k/a;->a:Ljava/lang/String;

    .line 5
    iput-object v1, v9, Lokjoy/k/a;->b:Ljava/lang/String;

    .line 6
    iput-object v3, v9, Lokjoy/k/a;->c:Ljava/lang/String;

    .line 7
    iput-object v4, v9, Lokjoy/k/a;->d:Ljava/lang/String;

    .line 8
    iput-object v5, v9, Lokjoy/k/a;->e:Ljava/lang/String;

    .line 9
    iput v6, v9, Lokjoy/k/a;->f:F

    .line 10
    iput-object v7, v9, Lokjoy/k/a;->g:Ljava/lang/String;

    .line 11
    iput v8, v9, Lokjoy/k/a;->h:I

    move-object v3, v9

    goto :goto_9a

    :cond_99
    nop

    .line 12
    :goto_9a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lokjoy/a/g;->a(Landroid/content/Context;Lokjoy/k/a;)V

    goto :goto_e2

    :cond_a9
    const-string v0, "\u5173\u95ed\u652f\u4ed8\u754c\u9762\uff0c\u65e0\u9700\u67e5\u8be2\u8ba2\u5355"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/j/e;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    iput-object v0, p0, Lokjoy/j/e;->h:Ljava/lang/String;

    :cond_ba
    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lokjoy/j/e;->h:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz v0, :cond_e2

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    iget-object v1, p0, Lokjoy/j/e;->c:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lokjoy/j/e;->c:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lokjoy/j/e;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    invoke-interface {v1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_e2
    :goto_e2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lokjoy/j/e;->e:Landroid/widget/Button;

    if-ne v0, p1, :cond_7

    invoke-virtual {p0}, Lokjoy/j/e;->b()V

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lokjoy/c/b;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "OkJoyPaymentWebFragment onCreate"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "joy_fragment_payment_layout"

    invoke-static {p3, v0}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lokjoy/j/e;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "closeButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/j/e;->e:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lokjoy/j/e;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "webView"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lokjoy/j/e;->f:Landroid/webkit/WebView;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setInitialScale(I)V

    iget-object p1, p0, Lokjoy/j/e;->f:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    sget-object p3, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const-string p1, "OkJoyPaymentWebFragment onCreateView"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/j/e;->d:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .registers 5

    invoke-super {p0}, Lokjoy/c/b;->onStart()V

    const-string v0, "OkJoyPaymentWebFragment onStart"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object v0

    new-instance v1, Lokjoy/u/a;

    iget-object v2, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v2, "\u52a0\u8f7d\u4e2d..."

    iput-object v2, v1, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Lokjoy/u/a;->show()V

    iget-object v2, p0, Lokjoy/j/e;->f:Landroid/webkit/WebView;

    iget-object v3, p0, Lokjoy/j/e;->b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    iget-object v3, v3, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;

    invoke-virtual {v3}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lokjoy/j/e;->f:Landroid/webkit/WebView;

    new-instance v3, Lokjoy/j/d;

    invoke-direct {v3, p0, v1, v0}, Lokjoy/j/d;-><init>(Lokjoy/j/e;Lokjoy/u/a;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Lokjoy/c/b;->onStop()V

    return-void
.end method
