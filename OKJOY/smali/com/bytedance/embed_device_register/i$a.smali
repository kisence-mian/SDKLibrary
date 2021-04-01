.class final Lcom/bytedance/embed_device_register/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embed_device_register/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static e:Ljava/lang/Object;

.field private static f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 194
    sput-object v0, Lcom/bytedance/embed_device_register/i$a;->g:Ljava/lang/reflect/Method;

    .line 195
    sput-object v0, Lcom/bytedance/embed_device_register/i$a;->h:Ljava/lang/reflect/Method;

    .line 196
    sput-object v0, Lcom/bytedance/embed_device_register/i$a;->i:Ljava/lang/reflect/Method;

    .line 197
    sput-object v0, Lcom/bytedance/embed_device_register/i$a;->j:Ljava/lang/reflect/Method;

    .line 201
    :try_start_9
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embed_device_register/i$a;->f:Ljava/lang/Class;

    .line 202
    sget-object v0, Lcom/bytedance/embed_device_register/i$a;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embed_device_register/i$a;->e:Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/bytedance/embed_device_register/i$a;->f:Ljava/lang/Class;

    const-string v1, "getUDID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embed_device_register/i$a;->g:Ljava/lang/reflect/Method;

    .line 204
    sget-object v0, Lcom/bytedance/embed_device_register/i$a;->f:Ljava/lang/Class;

    const-string v1, "getOAID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embed_device_register/i$a;->h:Ljava/lang/reflect/Method;

    .line 205
    sget-object v0, Lcom/bytedance/embed_device_register/i$a;->f:Ljava/lang/Class;

    const-string v1, "getVAID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embed_device_register/i$a;->i:Ljava/lang/reflect/Method;

    .line 206
    sget-object v0, Lcom/bytedance/embed_device_register/i$a;->f:Ljava/lang/Class;

    const-string v1, "getAAID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embed_device_register/i$a;->j:Ljava/lang/reflect/Method;

    .line 207
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "oaid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bytedance/embed_device_register/i$a;->h:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " udid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bytedance/embed_device_register/i$a;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_8f} :catch_90

    .line 211
    :goto_8f
    return-void

    .line 208
    :catch_90
    move-exception v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IdentifierManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reflect exception!"

    invoke-static {v1, v2, v0}, Lcom/bytedance/embed_device_register/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8f
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    sget-object v0, Lcom/bytedance/embed_device_register/i$a;->g:Ljava/lang/reflect/Method;

    invoke-static {p1, v0}, Lcom/bytedance/embed_device_register/i$a;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embed_device_register/i$a;->a:Ljava/lang/String;

    .line 220
    sget-object v0, Lcom/bytedance/embed_device_register/i$a;->h:Ljava/lang/reflect/Method;

    invoke-static {p1, v0}, Lcom/bytedance/embed_device_register/i$a;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embed_device_register/i$a;->b:Ljava/lang/String;

    .line 221
    sget-object v0, Lcom/bytedance/embed_device_register/i$a;->i:Ljava/lang/reflect/Method;

    invoke-static {p1, v0}, Lcom/bytedance/embed_device_register/i$a;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embed_device_register/i$a;->c:Ljava/lang/String;

    .line 222
    sget-object v0, Lcom/bytedance/embed_device_register/i$a;->j:Ljava/lang/reflect/Method;

    invoke-static {p1, v0}, Lcom/bytedance/embed_device_register/i$a;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embed_device_register/i$a;->d:Ljava/lang/String;

    .line 223
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 230
    sget-object v0, Lcom/bytedance/embed_device_register/i$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_34

    if-eqz p1, :cond_34

    .line 232
    :try_start_6
    sget-object v0, Lcom/bytedance/embed_device_register/i$a;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_34

    .line 234
    check-cast v0, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    .line 240
    :goto_16
    return-object v0

    .line 236
    :catch_17
    move-exception v0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IdentifierManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invoke exception!"

    invoke-static {v1, v2, v0}, Lcom/bytedance/embed_device_register/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    :cond_34
    const/4 v0, 0x0

    goto :goto_16
.end method

.method static a()Z
    .registers 1

    .prologue
    .line 226
    sget-object v0, Lcom/bytedance/embed_device_register/i$a;->f:Ljava/lang/Class;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/bytedance/embed_device_register/i$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
