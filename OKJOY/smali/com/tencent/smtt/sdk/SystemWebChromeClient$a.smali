.class Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/SystemWebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage$MessageLevel;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method constructor <init>(Landroid/webkit/ConsoleMessage;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/ConsoleMessage$MessageLevel;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage$MessageLevel;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage$MessageLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;->a:Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage$MessageLevel;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v0

    iput v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;->d:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage$MessageLevel;->LOG:Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage$MessageLevel;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;->a:Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage$MessageLevel;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;->c:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;->d:I

    return-void
.end method


# virtual methods
.method public lineNumber()I
    .registers 2

    iget v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;->d:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public messageLevel()Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage$MessageLevel;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;->a:Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage$MessageLevel;

    return-object v0
.end method

.method public sourceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;->c:Ljava/lang/String;

    return-object v0
.end method
