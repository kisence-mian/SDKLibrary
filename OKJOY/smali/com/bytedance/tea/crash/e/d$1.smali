.class Lcom/bytedance/tea/crash/e/d$1;
.super Ljava/lang/Object;
.source "CrashFileCollector.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/tea/crash/e/d;->a(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/tea/crash/e/d;


# direct methods
.method constructor <init>(Lcom/bytedance/tea/crash/e/d;)V
    .registers 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/d$1;->a:Lcom/bytedance/tea/crash/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 141
    if-eqz p2, :cond_c

    const-string v0, ".npth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
