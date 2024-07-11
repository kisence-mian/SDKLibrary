.class final Lcom/bytedance/embedapplog/co;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;)V
    .registers 2

    .line 7
    sget-object v0, Lcom/bun/miitmdid/core/JLibrary;->context:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 8
    invoke-static {p0}, Lcom/bun/miitmdid/core/JLibrary;->InitEntry(Landroid/content/Context;)Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    .line 10
    :cond_7
    return-void
.end method
