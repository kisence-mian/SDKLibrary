.class Lcom/ss/android/downloadlib/addownload/e$3;
.super Ljava/lang/Object;
.source "CleanSpaceHelper.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/e;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/addownload/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/f$b;

.field final synthetic b:Lcom/ss/android/downloadlib/addownload/e;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/e;Lcom/ss/android/downloadlib/addownload/f$b;)V
    .registers 3

    .line 129
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$3;->b:Lcom/ss/android/downloadlib/addownload/e;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/e$3;->a:Lcom/ss/android/downloadlib/addownload/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e$3;->b:Lcom/ss/android/downloadlib/addownload/e;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/downloadlib/addownload/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 134
    return-void

    .line 136
    :cond_d
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e$3;->b:Lcom/ss/android/downloadlib/addownload/e;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/downloadlib/addownload/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e$3;->b:Lcom/ss/android/downloadlib/addownload/e;

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/downloadlib/addownload/e;Ljava/util/Map;)J

    move-result-wide v0

    .line 140
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_43

    .line 141
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 143
    :try_start_28
    const-string v2, "apk_size"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v2, "available_space"

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/e;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_3e} :catch_3f

    .line 147
    goto :goto_43

    .line 145
    :catch_3f
    move-exception p1

    .line 146
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 150
    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$3;->a:Lcom/ss/android/downloadlib/addownload/f$b;

    invoke-interface {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/f$b;->a(J)V

    .line 151
    return-void
.end method
