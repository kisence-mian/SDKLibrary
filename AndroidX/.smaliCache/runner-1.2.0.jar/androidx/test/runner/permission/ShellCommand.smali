.class public abstract Landroidx/test/runner/permission/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# static fields
.field private static final SAFE_PUNCTUATION:Ljava/lang/String; = "@%-_+:,./"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static shellEscape(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "word"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 39
    .local v0, "len":I
    if-nez v0, :cond_9

    .line 42
    const-string v1, "\'\'"

    return-object v1

    .line 44
    :cond_9
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_a
    if-ge v1, v0, :cond_4a

    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 48
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v3, "@%-_+:,./"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_47

    .line 50
    const-string v3, "\'"

    const-string v4, "\'\\\'\'"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 44
    .end local v2    # "c":C
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 53
    .end local v1    # "ii":I
    :cond_4a
    return-object p0
.end method


# virtual methods
.method abstract execute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
