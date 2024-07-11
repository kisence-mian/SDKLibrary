.class final Lcom/tencent/bugly/crashreport/biz/a$a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/biz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

.field private synthetic c:Lcom/tencent/bugly/crashreport/biz/a;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/biz/a;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V
    .registers 4

    .line 127
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/biz/a$a;->c:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/biz/a$a;->b:Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 129
    iput-boolean p3, p0, Lcom/tencent/bugly/crashreport/biz/a$a;->a:Z

    .line 130
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/a$a;->b:Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    if-eqz v0, :cond_21

    .line 147
    if-eqz v0, :cond_12

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    .line 149
    :cond_12
    const-string v0, "[UserInfo] Record user info."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/a$a;->c:Lcom/tencent/bugly/crashreport/biz/a;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/biz/a$a;->b:Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    invoke-static {v0, v2, v1}, Lcom/tencent/bugly/crashreport/biz/a;->a(Lcom/tencent/bugly/crashreport/biz/a;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    .line 152
    :cond_21
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/biz/a$a;->a:Z

    if-eqz v0, :cond_35

    .line 153
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/a$a;->c:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v1

    if-eqz v1, :cond_35

    new-instance v2, Lcom/tencent/bugly/crashreport/biz/a$2;

    invoke-direct {v2, v0}, Lcom/tencent/bugly/crashreport/biz/a$2;-><init>(Lcom/tencent/bugly/crashreport/biz/a;)V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_36

    .line 159
    :cond_35
    return-void

    .line 155
    :catchall_36
    move-exception v0

    .line 156
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    :cond_40
    return-void
.end method
