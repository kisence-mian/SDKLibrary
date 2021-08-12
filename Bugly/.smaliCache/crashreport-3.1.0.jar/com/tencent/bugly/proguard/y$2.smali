.class final Lcom/tencent/bugly/proguard/y$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 191
    iput-object p1, p0, Lcom/tencent/bugly/proguard/y$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/y$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/y$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/tencent/bugly/proguard/y$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/y$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/y$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method
