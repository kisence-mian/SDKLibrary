.class Lcom/ss/android/socialbase/appdownloader/b$a;
.super Ljava/lang/Object;
.source "AntiHijackUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/ss/android/socialbase/appdownloader/b$e;

.field private final b:I

.field private c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/b$b;)V
    .registers 11

    .prologue
    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/b$a;->c:Lorg/json/JSONObject;

    .line 862
    const-string v0, "query_interval"

    const/16 v1, 0x3e8

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/b$a;->b:I

    .line 863
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/b$e;

    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/b$a;->b:I

    int-to-long v4, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/appdownloader/b$e;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/ss/android/socialbase/appdownloader/b$b;J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$a;->a:Lcom/ss/android/socialbase/appdownloader/b$e;

    .line 864
    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .prologue
    .line 871
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$a;->a:Lcom/ss/android/socialbase/appdownloader/b$e;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b$e;->a(Lcom/ss/android/socialbase/appdownloader/b$e;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 872
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 873
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 874
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/b$a;->a:Lcom/ss/android/socialbase/appdownloader/b$e;

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/b$e;->b(Lcom/ss/android/socialbase/appdownloader/b$e;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 876
    :cond_18
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a;->b(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 877
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/b$a;)Lcom/ss/android/socialbase/appdownloader/b$a;

    .line 878
    return-void
.end method

.method public c()V
    .registers 7

    .prologue
    .line 886
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_39

    .line 887
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$a;->c:Lorg/json/JSONObject;

    const-string v1, "time_out_second"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 888
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 889
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 890
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/b$a;->a:Lcom/ss/android/socialbase/appdownloader/b$e;

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/b$e;->b(Lcom/ss/android/socialbase/appdownloader/b$e;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 892
    if-lez v0, :cond_39

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_39

    .line 894
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 895
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 896
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/b$a;->a:Lcom/ss/android/socialbase/appdownloader/b$e;

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/b$e;->b(Lcom/ss/android/socialbase/appdownloader/b$e;)Landroid/os/Handler;

    move-result-object v2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 899
    :cond_39
    return-void
.end method
