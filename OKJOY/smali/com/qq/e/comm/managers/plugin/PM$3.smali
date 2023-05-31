.class final Lcom/qq/e/comm/managers/plugin/PM$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/comm/managers/plugin/PM;->autoRollbackPlugin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/qq/e/comm/managers/plugin/PM;


# direct methods
.method constructor <init>(Lcom/qq/e/comm/managers/plugin/PM;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/comm/managers/plugin/PM$3;->b:Lcom/qq/e/comm/managers/plugin/PM;

    iput-object p2, p0, Lcom/qq/e/comm/managers/plugin/PM$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u63d2\u4ef6\u5f00\u59cb\u81ea\u52a8\u56de\u6eda\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \uff0c \u7248\u672c\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM$3;->b:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-static {v1}, Lcom/qq/e/comm/managers/plugin/PM;->c(Lcom/qq/e/comm/managers/plugin/PM;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> 1046"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    const-string v0, "invalidPluginSig"

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM$3;->b:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-static {v1}, Lcom/qq/e/comm/managers/plugin/PM;->d(Lcom/qq/e/comm/managers/plugin/PM;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/e/comm/util/SharedPreferencedUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "invalidPluginMsg"

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/e/comm/util/SharedPreferencedUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "invalidPluginVersion"

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM$3;->b:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-static {v1}, Lcom/qq/e/comm/managers/plugin/PM;->c(Lcom/qq/e/comm/managers/plugin/PM;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/qq/e/comm/util/SharedPreferencedUtil;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM$3;->b:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/PM;->e(Lcom/qq/e/comm/managers/plugin/PM;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/FileUtil;->deleteDir(Ljava/io/File;)V

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM$3;->b:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/PM;->e(Lcom/qq/e/comm/managers/plugin/PM;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "e_qq_com_dex"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/FileUtil;->deleteDir(Ljava/io/File;)V

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM$3;->b:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/PM;->f(Lcom/qq/e/comm/managers/plugin/PM;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM$3;->b:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/PM;->g(Lcom/qq/e/comm/managers/plugin/PM;)V

    :cond_71
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM$3;->b:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-static {v0, v2}, Lcom/qq/e/comm/managers/plugin/PM;->a(Lcom/qq/e/comm/managers/plugin/PM;Z)Z

    return-void
.end method
