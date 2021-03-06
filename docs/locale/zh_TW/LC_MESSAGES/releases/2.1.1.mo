��    
      l               �      �      �      �   ]   	     g     u  �   {  /    V  G  �  �     2     F     e  ]   ~     �     �  �   �  /  �  V  �   2.1.1 Release Notes Backwards Incompatible Changes Bugfixes & Small Changes Channels 2.1.1 is a bugfix release for an important bug in the new async authentication code. Major Changes None. Previously, the object in ``scope["user"]`` was one of Django's SimpleLazyObjects, which then called our ``get_user`` async function via ``async_to_sync``. This worked fine when called from SyncConsumers, but because async environments do not run attribute access in an async fashion, when the body of an async consumer tried to call it, the ``asgiref`` library flagged an error where the code was trying to call a synchronous function during a async context. To fix this, the User object is now loaded non-lazily on application startup. This introduces a blocking call during the synchronous application constructor, so the ASGI spec has been updated to recommend that constructors for ASGI apps are called in a threadpool and Daphne 2.1.1 implements this and is recommended for use with this release. Project-Id-Version: Channels-docs-zh_TW 2.1.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-05-21 20:37+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_Hant_TW
Language-Team: zh_Hant_TW <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 2.1.1 Release Notes Backwards Incompatible Changes Bugfixes & Small Changes Channels 2.1.1 is a bugfix release for an important bug in the new async authentication code. Major Changes None. Previously, the object in ``scope["user"]`` was one of Django's SimpleLazyObjects, which then called our ``get_user`` async function via ``async_to_sync``. This worked fine when called from SyncConsumers, but because async environments do not run attribute access in an async fashion, when the body of an async consumer tried to call it, the ``asgiref`` library flagged an error where the code was trying to call a synchronous function during a async context. To fix this, the User object is now loaded non-lazily on application startup. This introduces a blocking call during the synchronous application constructor, so the ASGI spec has been updated to recommend that constructors for ASGI apps are called in a threadpool and Daphne 2.1.1 implements this and is recommended for use with this release. 