.class public Lcom/qq/gdt/action/h/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x2

    const-string v0, "^([a-zA-Z][a-zA-Z\\d_]{0,63})$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qq/gdt/action/h/b;->a:Ljava/util/regex/Pattern;

    const-string v0, "^ams_reserved_(.*?)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qq/gdt/action/h/b;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "\u5728logAction\u65b9\u6cd5\u4e2d\uff0cactionType\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    :goto_c
    return v0

    :cond_d
    sget-object v1, Lcom/qq/gdt/action/h/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "\u5728logAction\u65b9\u6cd5\u4e2d\uff0cactionType\u53c2\u6570\u53ea\u80fd\u5305\u542b\u5b57\u6bcd\u3001\u6570\u5b57\u548c\u4e0b\u5212\u7ebf\uff0c\u4e14\u53ea\u80fd\u4ee5\u5b57\u6bcd\u5f00\u5934\uff0c\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc764\u4e2a\u5b57\u7b26\uff01"

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    goto :goto_c

    :cond_1f
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public static a(Lorg/json/JSONObject;)Z
    .registers 12

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_7

    move v1, v4

    :goto_6
    return v1

    :cond_7
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_107

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v1, "\u5728logAction\u65b9\u6cd5\u4e2d\uff0cactionParam\u53c2\u6570\u7684key\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    move v1, v5

    goto :goto_6

    :cond_24
    sget-object v2, Lcom/qq/gdt/action/h/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_37

    const-string v1, "\u5728logAction\u65b9\u6cd5\u4e2d\uff0cactionParam\u53c2\u6570\u7684key\u53ea\u80fd\u5305\u542b\u5b57\u6bcd\u3001\u6570\u5b57\u548c\u4e0b\u5212\u7ebf\uff0c\u4e14\u4e0d\u80fd\u4ee5\u6570\u5b57\u5f00\u5934\uff0c\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc764\u4e2a\u5b57\u7b26\uff01"

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    move v1, v5

    goto :goto_6

    :cond_37
    sget-object v2, Lcom/qq/gdt/action/h/b;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "SDK\u5185\u90e8\u9884\u7559\u53c2\u6570\u7684key\u5747\u4ee5\'ams_reserved_\'\u5f00\u5934\uff0c\u8be5\u53c2\u6570\u7684\u503c\u4f1a\u88abSDK\u5185\u90e8\u8986\u76d6\uff0c\u8bf7\u4e0d\u8981\u4f7f\u7528\uff01"

    invoke-static {v2}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;)V

    :cond_48
    :try_start_48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v2, v3, Ljava/lang/String;

    if-nez v2, :cond_74

    instance-of v2, v3, Ljava/lang/Number;

    if-nez v2, :cond_74

    instance-of v2, v3, Ljava/lang/Boolean;

    if-nez v2, :cond_74

    instance-of v2, v3, Lorg/json/JSONArray;

    if-nez v2, :cond_74

    const-string v2, "\u5728logAction\u65b9\u6cd5\u4e2d\uff0cactionParam\u53c2\u6570\u7684value\u5fc5\u987b\u662fString/Number/Boolean/JSONArray\u4e2d\u7684\u4e00\u79cd\uff01[key=%s, value=%s]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v2, v6}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    move v1, v5

    goto :goto_6

    :cond_74
    instance-of v2, v3, Lorg/json/JSONArray;

    if-eqz v2, :cond_b

    move-object v0, v3

    check-cast v0, Lorg/json/JSONArray;

    move-object v2, v0

    move v6, v5

    :goto_7d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_bd

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    if-nez v9, :cond_ba

    instance-of v9, v8, Ljava/lang/Number;

    if-nez v9, :cond_ba

    instance-of v9, v8, Ljava/lang/Boolean;

    if-nez v9, :cond_ba

    const-string v2, "\u5728logAction\u65b9\u6cd5\u4e2d\uff0c\u5982\u679cactionParam\u53c2\u6570\u4e2d\u7684\u67d0\u4e2a\u5143\u7d20\u7684value\u662fJSONArray\uff0c\u90a3\u4e48\u8fd9\u4e2aJSONArray\u4e2d\u7684\u6bcf\u4e2a\u5143\u7d20\u5fc5\u987b\u662fString/Number/Boolean\u4e2d\u7684\u4e00\u79cd\uff01[key=%s, value=%s, %nvalue\u7684\u7b2c%d\u4e2a\u5143\u7d20\u4e3a%s]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v7, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v9

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    const/4 v3, 0x3

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v3

    invoke-static {v2, v7}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    move v1, v5

    goto/16 :goto_6

    :cond_ba
    add-int/lit8 v6, v6, 0x1

    goto :goto_7d

    :cond_bd
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v3, v10, :cond_b

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move v3, v4

    :goto_c9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_b

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_db

    instance-of v9, v6, Ljava/lang/String;

    if-nez v9, :cond_f3

    :cond_db
    instance-of v9, v8, Ljava/lang/Number;

    if-eqz v9, :cond_e3

    instance-of v9, v6, Ljava/lang/Number;

    if-nez v9, :cond_f3

    :cond_e3
    instance-of v8, v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_eb

    instance-of v8, v6, Ljava/lang/Boolean;

    if-nez v8, :cond_f3

    :cond_eb
    const-string v2, "\u5728logAction\u65b9\u6cd5\u4e2d\uff0c\u5982\u679cactionParam\u53c2\u6570\u4e2d\u7684\u67d0\u4e2a\u5143\u7d20\u7684value\u662fJSONArray\uff0c\u90a3\u4e48\u8fd9\u4e2aJSONArray\u4e2d\u6240\u6709\u5143\u7d20\u7684\u7c7b\u578b\u5fc5\u987b\u662f\u540c\u4e00\u79cd\uff01"

    invoke-static {v2}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V
    :try_end_f0
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_f0} :catch_f6

    move v1, v5

    goto/16 :goto_6

    :cond_f3
    add-int/lit8 v3, v3, 0x1

    goto :goto_c9

    :catch_f6
    move-exception v2

    const-string v2, "Unexpected action param key. [key=\'%s\']"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    move v1, v5

    goto/16 :goto_6

    :cond_107
    move v1, v4

    goto/16 :goto_6
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    const-string v0, "ACTIVATE_APP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "\u5982\u679c\u60a8\u60f3\u7edf\u8ba1App\u7684\u6fc0\u6d3b\u884c\u4e3a\uff0c\u53ea\u9700\u8981\u5728\u8c03\u7528logEvent\u65b9\u6cd5\u65f6\u4f20\u5165START_APP\u53c2\u6570\uff0cSDK\u4f1a\u81ea\u52a8\u8bc6\u522b\u672c\u6b21\u884c\u4e3a\u662f\u6fc0\u6d3b\u8fd8\u662f\u542f\u52a8\u884c\u4e3a\uff0c\u5e76\u8fdb\u884c\u4e0a\u62a5\u3002"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "START_APP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ACTIVATE_APP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
