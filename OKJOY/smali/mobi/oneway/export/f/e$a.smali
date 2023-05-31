.class Lmobi/oneway/export/f/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/oneway/export/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Lmobi/oneway/export/enums/EventType;

.field final synthetic b:Lmobi/oneway/export/f/e;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/f/e;Lmobi/oneway/export/enums/EventType;)V
    .registers 3

    iput-object p1, p0, Lmobi/oneway/export/f/e$a;->b:Lmobi/oneway/export/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmobi/oneway/export/f/e$a;->a:Lmobi/oneway/export/enums/EventType;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    new-instance v0, Lmobi/oneway/export/g/f;

    const-string v1, "http://track.oneway.mobi/sdkEvent"

    invoke-direct {v0, v1}, Lmobi/oneway/export/g/f;-><init>(Ljava/lang/String;)V

    const-string v1, "eventName"

    iget-object v2, p0, Lmobi/oneway/export/f/e$a;->a:Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v2}, Lmobi/oneway/export/enums/EventType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "publishId"

    invoke-static {}, Lmobi/oneway/export/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "token"

    invoke-static {}, Lmobi/oneway/export/d/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "adType"

    iget-object v2, p0, Lmobi/oneway/export/f/e$a;->b:Lmobi/oneway/export/f/e;

    invoke-static {v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/f/e;)Lmobi/oneway/export/enums/AdType;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/oneway/export/enums/AdType;->value()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "dmd"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "dmk"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "ip"

    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmobi/oneway/export/h/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "osv"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    invoke-static {}, Lmobi/oneway/export/d/b;->c()Z

    move-result v1

    if-eqz v1, :cond_74

    const-string v1, "e"

    invoke-static {}, Lmobi/oneway/export/d/b;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    :cond_74
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lmobi/oneway/export/g/f;->c(Ljava/lang/String;)Lmobi/oneway/export/g/f;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/f/e$a;->b:Lmobi/oneway/export/f/e;

    invoke-static {v1}, Lmobi/oneway/export/f/e;->b(Lmobi/oneway/export/f/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;)Lmobi/oneway/export/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/g/f;->n()Lmobi/oneway/export/g/b;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_87} :catch_88

    :goto_87
    return-void

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_87
.end method
