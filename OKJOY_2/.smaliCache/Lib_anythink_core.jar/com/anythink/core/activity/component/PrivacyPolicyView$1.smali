.class final Lcom/anythink/core/activity/component/PrivacyPolicyView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/activity/component/PrivacyPolicyView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/activity/component/PrivacyPolicyView;


# direct methods
.method constructor <init>(Lcom/anythink/core/activity/component/PrivacyPolicyView;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$1;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 94
    :try_start_0
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$1;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object p1, p1, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$1;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-boolean p1, p1, Lcom/anythink/core/activity/component/PrivacyPolicyView;->k:Z

    if-nez p1, :cond_21

    .line 95
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$1;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/anythink/core/activity/component/PrivacyPolicyView;->j:Z

    .line 96
    invoke-static {}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reload......."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$1;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, p1, Lcom/anythink/core/activity/component/PrivacyPolicyView;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->loadPolicyUrl(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    .line 104
    :cond_21
    return-void

    .line 100
    :catchall_22
    move-exception p1

    .line 106
    return-void
.end method
