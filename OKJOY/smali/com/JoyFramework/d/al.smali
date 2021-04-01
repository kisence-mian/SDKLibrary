.class Lcom/JoyFramework/d/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/JoyFramework/d/aj$a;

.field final synthetic f:Lcom/JoyFramework/d/aj;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/aj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/JoyFramework/d/aj$a;)V
    .registers 7

    .prologue
    .line 233
    iput-object p1, p0, Lcom/JoyFramework/d/al;->f:Lcom/JoyFramework/d/aj;

    iput-object p2, p0, Lcom/JoyFramework/d/al;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/JoyFramework/d/al;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/JoyFramework/d/al;->c:Ljava/lang/String;

    iput p5, p0, Lcom/JoyFramework/d/al;->d:I

    iput-object p6, p0, Lcom/JoyFramework/d/al;->e:Lcom/JoyFramework/d/aj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/remote/b/d/b;->c()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/JoyFramework/remote/c/d;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/c/d;

    .line 240
    iget-object v1, p0, Lcom/JoyFramework/d/al;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/JoyFramework/remote/c/d;->c(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 241
    new-instance v1, Lcom/JoyFramework/d/am;

    invoke-direct {v1, p0}, Lcom/JoyFramework/d/am;-><init>(Lcom/JoyFramework/d/al;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 277
    :goto_1e
    return-void

    .line 272
    :catch_1f
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    const-string v1, "DownLoadFileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runnable - downLoadFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method
