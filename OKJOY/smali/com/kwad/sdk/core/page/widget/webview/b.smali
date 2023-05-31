.class public Lcom/kwad/sdk/core/page/widget/webview/b;
.super Landroid/webkit/WebView;
.source ""


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "getClass"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hashCode"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "notify"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "notifyAll"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "equals"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "toString"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wait"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kwad/sdk/core/page/widget/webview/b;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_b

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :goto_a
    return-object v0

    :cond_b
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_12

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_a

    :cond_12
    const-class v0, Ljava/lang/String;

    goto :goto_a
.end method

.method private a(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/webview/b;->h()Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .registers 15

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    if-nez p3, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "if(typeof(window."

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")!=\'undefined\'){"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}else {"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    window."

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_39
    if-ge v2, v4, :cond_124

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :goto_47
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_39

    :cond_4b
    const-string v0, "        "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ":function("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v7, v0

    if-lez v7, :cond_81

    add-int/lit8 v8, v7, -0x1

    move v0, v1

    :goto_64
    if-ge v0, v8, :cond_78

    const-string v9, "arg"

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    :cond_78
    const-string v0, "arg"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_81
    const-string v0, ") {"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v5, :cond_f8

    const-string v0, "            return "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "prompt(\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "MyApp:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'+"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a5
    const-string v0, "JSON.stringify({"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "obj"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\',"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "func"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\',"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "args"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v7, :cond_113

    add-int/lit8 v5, v7, -0x1

    move v0, v1

    :goto_e4
    if-ge v0, v5, :cond_10a

    const-string v6, "arg"

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e4

    :cond_f8
    const-string v0, "            prompt(\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "MyApp:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'+"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a5

    :cond_10a
    const-string v0, "arg"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_113
    const-string v0, "]})"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "        }, "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_47

    :cond_124
    const-string v0, "    };"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1b} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1b} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1b} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1b

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1b

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1b

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b
.end method

.method private a(Landroid/webkit/JsPromptResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_e

    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    :goto_d
    return v1

    :cond_e
    const/4 v2, 0x0

    if-eqz p4, :cond_5b

    array-length v3, p4

    move v4, v3

    :goto_13
    if-lez v4, :cond_25

    new-array v2, v4, [Ljava/lang/Class;

    move v3, v1

    :goto_18
    if-ge v3, v4, :cond_25

    aget-object v6, p4, v3

    invoke-direct {p0, v6}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_25
    :try_start_25
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_39} :catch_55
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_39} :catch_4f

    if-ne v2, v4, :cond_48

    :cond_3b
    move v2, v0

    :goto_3c
    if-eqz v2, :cond_4a

    const-string v2, ""

    :goto_40
    :try_start_40
    invoke-virtual {p1, v2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/NoSuchMethodException; {:try_start_40 .. :try_end_43} :catch_55
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_4f

    :goto_43
    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    move v1, v0

    goto :goto_d

    :cond_48
    move v2, v1

    goto :goto_3c

    :cond_4a
    :try_start_4a
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4a .. :try_end_4d} :catch_55
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4f

    move-result-object v2

    goto :goto_40

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_43

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v0, v1

    goto :goto_43

    :cond_5b
    move v4, v1

    goto :goto_13
.end method

.method private a(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    sget-object v2, Lcom/kwad/sdk/core/page/widget/webview/b;->d:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v0, 0x1

    :cond_10
    return v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private e()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_c

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->c:Ljava/lang/String;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:(function JsAddJavascriptInterface_(){"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_20
    :try_start_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0, v3}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_39} :catch_3a

    goto :goto_20

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    const-string v0, "})()"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private f()Z
    .registers 3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private g()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private h()Z
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/widget/webview/b;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/widget/webview/b;->c()Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "removeJavascriptInterface"

    const-string v1, "searchBoxJavaBridge_"

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :catch_15
    move-exception v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private setAccessibilityEnabled(Z)V
    .registers 8

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_34

    move-result-object v1

    const-string v2, "setAccessibilityState"

    const/4 v3, 0x1

    :try_start_13
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    goto :goto_33
.end method


# virtual methods
.method public a()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/webview/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->a:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/page/widget/webview/b;->setAccessibilityEnabled(Z)V

    :cond_1b
    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/widget/webview/b;->d()V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 14

    const/4 v0, 0x0

    const-string v1, "MyApp:"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v1, 0x6

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :try_start_f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "obj"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "func"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "args"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v1, 0x0

    if-eqz v5, :cond_3d

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_3d

    new-array v1, v6, [Ljava/lang/Object;

    move v2, v0

    :goto_32
    if-ge v2, v6, :cond_3d

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_3d
    invoke-direct {p0, p5, v3, v4, v1}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Landroid/webkit/JsPromptResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_40} :catch_45

    move-result v1

    if-eqz v1, :cond_49

    const/4 v0, 0x1

    goto :goto_9

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_49
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    goto :goto_9
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/widget/webview/b;->d()V

    goto :goto_6
.end method

.method public b()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/webview/b;->g()V

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/webview/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/webview/b;->g()V

    goto :goto_b
.end method

.method public setOverScrollMode(I)V
    .registers 5

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOverScrollMode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.content.pm.PackageManager$NameNotFoundException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "java.lang.RuntimeException: Cannot load WebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "android.webkit.WebViewFactory$MissingWebViewPackageException: Failed to load WebView provider: No WebView installed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_3

    :catch_25
    move-exception v0

    goto :goto_3

    :cond_27
    throw v0
.end method
