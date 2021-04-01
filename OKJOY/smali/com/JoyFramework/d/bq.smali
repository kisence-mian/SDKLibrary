.class Lcom/JoyFramework/d/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$b;


# instance fields
.field a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/JoyFramework/d/bp;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/bp;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 77
    iput-object p1, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iput-object p2, p0, Lcom/JoyFramework/d/bq;->b:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/JoyFramework/d/bq;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->b:Lcom/JoyFramework/d/bo;

    iget-object v1, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v1, v1, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/d/bo;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 83
    if-eqz v0, :cond_3e

    .line 84
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mobileqq"

    const-string v3, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/JoyFramework/d/bq;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 91
    :goto_3d
    return-void

    .line 89
    :cond_3e
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    const-string v1, "\u624b\u673a\u672a\u5b89\u88c5QQ"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_3d
.end method

.method public b()V
    .registers 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->b:Lcom/JoyFramework/d/bo;

    iget-object v1, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v1, v1, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    const-string v2, "com.qzone"

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/d/bo;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 96
    if-eqz v0, :cond_3e

    .line 98
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.qzone"

    const-string v2, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/JoyFramework/d/bq;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    :goto_3d
    return-void

    .line 106
    :cond_3e
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    const-string v1, "\u624b\u673a\u672a\u5b89\u88c5QQ\u7a7a\u95f4"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_3d
.end method

.method public c()V
    .registers 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->b:Lcom/JoyFramework/d/bo;

    iget-object v1, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v1, v1, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    const-string v2, "com.tencent.mm"

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/d/bo;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 114
    if-eqz v0, :cond_3e

    .line 118
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/JoyFramework/d/bq;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    :goto_3d
    return-void

    .line 124
    :cond_3e
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    const-string v1, "\u624b\u673a\u672a\u5b89\u88c5\u5fae\u4fe1"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_3d
.end method

.method public d()V
    .registers 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->b:Lcom/JoyFramework/d/bo;

    iget-object v1, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v1, v1, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    const-string v2, "com.tencent.mm"

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/d/bo;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 131
    if-eqz v0, :cond_24

    .line 132
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->b:Lcom/JoyFramework/d/bo;

    iget-object v1, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v1, v1, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/JoyFramework/d/bq;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/d/bq;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/JoyFramework/d/bo;->a(Lcom/JoyFramework/d/bo;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_23
    return-void

    .line 135
    :cond_24
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    const-string v1, "\u624b\u673a\u672a\u5b89\u88c5\u5fae\u4fe1"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_23
.end method

.method public e()V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->b:Lcom/JoyFramework/d/bo;

    iget-object v1, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v1, v1, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    const-string v2, "com.sina.weibo"

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/d/bo;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 143
    if-eqz v0, :cond_50

    .line 144
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sinaweibo://sendweibo?content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/bq;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/JoyFramework/d/bq;->a:Landroid/content/Intent;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 151
    :goto_4f
    return-void

    .line 149
    :cond_50
    iget-object v0, p0, Lcom/JoyFramework/d/bq;->d:Lcom/JoyFramework/d/bp;

    iget-object v0, v0, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    const-string v1, "\u624b\u673a\u672a\u5b89\u88c5\u65b0\u6d6a\u5fae\u535a"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_4f
.end method
