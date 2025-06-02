# Changelog

## [1.5.2](https://github.com/vineetu/mcp-client-chatbot/compare/v1.6.1...v1.5.2) (2025-06-02)


### Features

* add chat-related translations and enhance UI components with animations and improved accessibility ([c254c84](https://github.com/vineetu/mcp-client-chatbot/commit/c254c8472f6b59a9d79a84cae892a77bcc8aefcb))
* add common UI translations and enhance project and thread management components with improved localization ([bf05c55](https://github.com/vineetu/mcp-client-chatbot/commit/bf05c55cd9c5878d86fac079a8856bfe257e479e))
* add Discord badge and section to README for community engagement ([4d2f165](https://github.com/vineetu/mcp-client-chatbot/commit/4d2f16501a0144fd8431dc246aad89dc9c51f204))
* Add env variables for deafult model and ollama url ([a15791f](https://github.com/vineetu/mcp-client-chatbot/commit/a15791fc0086e26a0e7827ada27c3245f540b502))
* add error logging and redirect for thread not found in selectThreadWithMessagesAction ([c9ae1f6](https://github.com/vineetu/mcp-client-chatbot/commit/c9ae1f617a36f50372546d527fe05dfcb24e97ea))
* Add file based MCP servers and fix docker tag ([aa229aa](https://github.com/vineetu/mcp-client-chatbot/commit/aa229aadee505357f4b33bb755a2b8e8b68c5d1b))
* add husky ([067d58d](https://github.com/vineetu/mcp-client-chatbot/commit/067d58dbbb58428bace3a71769c5a7dcea86bcd5))
* add husky for formatting and checking commits  ([#71](https://github.com/vineetu/mcp-client-chatbot/issues/71)) ([a379cd3](https://github.com/vineetu/mcp-client-chatbot/commit/a379cd3e869b5caab5bcaf3b03f5607021f988ef))
* add keyboard shortcut for new chat and update tooltip with shortcut information ([92634d5](https://github.com/vineetu/mcp-client-chatbot/commit/92634d556e0d9a897f540fb84f87c4a06dad8373))
* add language translation guidelines and instructions for contributing new languages to the chatbot ([3bb8fd3](https://github.com/vineetu/mcp-client-chatbot/commit/3bb8fd3d332e4bf65d87b8ca8b92c190500f308b))
* add lint-staged and remove commitlint ([67988b8](https://github.com/vineetu/mcp-client-chatbot/commit/67988b8ad29fba4fc4bfee93bf9fe2e9d83b7dc0))
* add loading state to ToolSelector and refactor MCP server handling in McpServerSelector ([b9fb409](https://github.com/vineetu/mcp-client-chatbot/commit/b9fb40944e24451d357edb426b6b9bb6ff0d8fd2))
* add local build script and update README for local testing instructions; enhance middleware secure cookie handling based on deployment environment ([0080b5a](https://github.com/vineetu/mcp-client-chatbot/commit/0080b5a232d9aa482e0645ceae1a926c13e81dd6))
* add logging for base URL configuration in auth server and update baseURL assignment for better clarity ([6ca13fd](https://github.com/vineetu/mcp-client-chatbot/commit/6ca13fdc8626c054b67c93f1a0c8994d413be411))
* add MCP server binding support for thread and project ([89d21a9](https://github.com/vineetu/mcp-client-chatbot/commit/89d21a9c1dcbbcea2a83610e743bad3172844df0))
* add MCP server dropdown component and integrate it into the prompt input for enhanced server management ([aed35f1](https://github.com/vineetu/mcp-client-chatbot/commit/aed35f159d2740f5722a06ffc6dd9b1f34cf976d))
* add message deletion functionality to ToolMessagePart component ([f9034ae](https://github.com/vineetu/mcp-client-chatbot/commit/f9034ae3f8d73b2f92c633c5de4635d530c0ef55))
* add message for no tools available in tool selector ([46422dd](https://github.com/vineetu/mcp-client-chatbot/commit/46422ddf5198c614d3c62aafc98c4496e91152b4))
* add name validation for MCP client to ensure only alphanumeric characters are allowed ([eb59068](https://github.com/vineetu/mcp-client-chatbot/commit/eb59068e5b84865d0551ce43ae8935e8d065eb85))
* add new translations for project and chat management, enhance sidebar components with improved UI interactions, and implement dynamic project and chat visibility toggles ([5319d9c](https://github.com/vineetu/mcp-client-chatbot/commit/5319d9c9764467cc74b08a4cc8d7a60fb384bad2))
* add new translations for reporting issues and joining the community, remove unused language selection component, and enhance theme selection functionality in the sidebar ([314973c](https://github.com/vineetu/mcp-client-chatbot/commit/314973ca033ce5c5bf9fc978c5fe74094faaa6e0))
* add open router ([a391ce4](https://github.com/vineetu/mcp-client-chatbot/commit/a391ce418dcffe5c7bbdd803ef3f4b80bcb0cd73))
* add pink themes ([2e43cc6](https://github.com/vineetu/mcp-client-chatbot/commit/2e43cc628ad0ea159865a4cf633821fa35792d38))
* add remark-gfm for table / footnote support ([f044699](https://github.com/vineetu/mcp-client-chatbot/commit/f044699bf355cb890b18cc8b6698566c96a684b7))
* add remark-gfm for table / footnote support ([449cffc](https://github.com/vineetu/mcp-client-chatbot/commit/449cffc8dbbbf7510c91a5866eb2de869bdb13ca))
* add Spanish, French, Japanese, and Chinese language support with UI improvements ([#74](https://github.com/vineetu/mcp-client-chatbot/issues/74)) ([e34d43d](https://github.com/vineetu/mcp-client-chatbot/commit/e34d43df78767518f0379a434f8ffb1808b17e17))
* Add support for Streamable HTTP Transport [#56](https://github.com/vineetu/mcp-client-chatbot/issues/56) ([#64](https://github.com/vineetu/mcp-client-chatbot/issues/64)) ([8783943](https://github.com/vineetu/mcp-client-chatbot/commit/878394337e3b490ec2d17bcc302f38c695108d73))
* add temporary chat functionality and integrate vaul for drawer components ([56a6b42](https://github.com/vineetu/mcp-client-chatbot/commit/56a6b42f95a2155a771bdba20281dd6fcac5f5a5))
* add temporary chat functionality with dedicated page and API support ([4e0e3d0](https://github.com/vineetu/mcp-client-chatbot/commit/4e0e3d03ba37918210e1670983c45a935c3ba6ff))
* add user feedback for unsaved messages in ErrorMessage component ([3145f91](https://github.com/vineetu/mcp-client-chatbot/commit/3145f9129ca31eafee2c46ebe03d03005f1f6f31))
* Add vercel deployment and docker ([4eae76d](https://github.com/vineetu/mcp-client-chatbot/commit/4eae76d544845e3f73024407daa57659f61a94cf))
* add Wrench icon to ToolMessagePart component ([5065149](https://github.com/vineetu/mcp-client-chatbot/commit/506514963f8d40a39d0bea11d9b3f4b93a89a4d9))
* default tools (chart) ([fd94720](https://github.com/vineetu/mcp-client-chatbot/commit/fd94720d0c317f8d343ea6575771bd15953c20a4))
* delete message ([cf3165d](https://github.com/vineetu/mcp-client-chatbot/commit/cf3165d1841fc89cfa0b05a43bd9d3a74f66de50))
* enhance authentication UI and add Korean translations ([1389e0a](https://github.com/vineetu/mcp-client-chatbot/commit/1389e0ab1e8e639cfa6f248001ffa2d9c13f6c47))
* enhance chat functionality with message retrieval and error handling improvements ([21c7390](https://github.com/vineetu/mcp-client-chatbot/commit/21c7390424a14fa2136976745d28620eb9524a7e))
* enhance ChatBot and MessageEditor components with latest reference ([69b642f](https://github.com/vineetu/mcp-client-chatbot/commit/69b642f0b0bfa8cab1cd3907e24d15b30ff36338))
* enhance ChatBot and PromptInput components with tool invocation handling ([81508bc](https://github.com/vineetu/mcp-client-chatbot/commit/81508bcd6ba098859c9108d034bb3432cb332bff))
* enhance error handling and UI components in chat functionality ([65a59bb](https://github.com/vineetu/mcp-client-chatbot/commit/65a59bba1feaf0ade7448c0de6edd63a937c4406))
* enhance localization by adding new translations for chat, project, and keyboard shortcuts, and improve UI components with dynamic text rendering ([d71997d](https://github.com/vineetu/mcp-client-chatbot/commit/d71997dad6d685fa10099dd2e80d3e83aa403ecf))
* enhance manual tool invocation handling and logging ([dacde38](https://github.com/vineetu/mcp-client-chatbot/commit/dacde38afe73fda37993e0a435c4f7d9696fc592))
* enhance MCP server binding component with improved UI and functionality ([d6f70d2](https://github.com/vineetu/mcp-client-chatbot/commit/d6f70d213ec4b2a3444634a39284b49efd656a6d))
* enhance MCP server selection with link to add a server when none are detected ([e8a4e1c](https://github.com/vineetu/mcp-client-chatbot/commit/e8a4e1c0d0aa24e3d3aaa6bc5f4eb796bff334d3))
* enhance MCPClient transport handling with StreamableHTTPClientTransport and fallback to SSE ([c3413c3](https://github.com/vineetu/mcp-client-chatbot/commit/c3413c3b6aa23e933bf27184c01aaf9a6c9bc333))
* enhance MentionInput and PromptInput components to support tool and server mentions with improved UI elements ([9487d04](https://github.com/vineetu/mcp-client-chatbot/commit/9487d045bd0311fbb924b3eb3b217cb839ca95fa))
* enhance Next.js configuration with cleanDistDir and updated devIndicators ([d5f23a9](https://github.com/vineetu/mcp-client-chatbot/commit/d5f23a9ea21af13653b7cd305b9b7594b9146fea))
* enhance project management features with project renaming and improved dropdown UI ([d321048](https://github.com/vineetu/mcp-client-chatbot/commit/d321048721379303888fe38afaf7cd83659e7dfd))
* enhance ProjectDropdown and ThreadDropdown components with side and align props ([a2273b0](https://github.com/vineetu/mcp-client-chatbot/commit/a2273b00b5547509ac80d795ac2582e47f4712aa))
* enhance temporary chat functionality and update model handling ([8dc2584](https://github.com/vineetu/mcp-client-chatbot/commit/8dc258442fff921fa1315c0506dcd42b46fad4dd))
* enhance TemporaryChat component with improved shortcut key display and update AppHeader to remove GitHub link, streamline UI interactions in AppSidebarUser for reporting issues and joining community ([5cb31b5](https://github.com/vineetu/mcp-client-chatbot/commit/5cb31b541ad55d19d216028c920202aa4900ec4a))
* enhance TemporaryChat component with new instructions feature, add corresponding translations, and improve UI interactions in AppHeader for better user experience ([0c7be80](https://github.com/vineetu/mcp-client-chatbot/commit/0c7be8052e815a43dad4ea81da27beb4f84668c3))
* enhance tool filtering logic in chat route and improve tool selector component styling ([889442f](https://github.com/vineetu/mcp-client-chatbot/commit/889442fc8307c8997c9b36ca289443e3d5ee4331))
* enhance ToolMessagePart with input/output copy functionality and JSON parsing for tool results ([32268b1](https://github.com/vineetu/mcp-client-chatbot/commit/32268b1a3272f9d3bffbe341cc2d9ce37df0685f))
* extend app state and components with new toolkit and server management features ([922cada](https://github.com/vineetu/mcp-client-chatbot/commit/922cadac2628e530d711f79493d9bdfa036403cf))
* implement cold start-like auto connection for MCP server and simplify status ([#73](https://github.com/vineetu/mcp-client-chatbot/issues/73)) ([987c442](https://github.com/vineetu/mcp-client-chatbot/commit/987c4425504d6772e0aefe08b4e1911e4cb285c1))
* implement language selection component and enhance authentication UI with improved translations and user prompts ([d97d891](https://github.com/vineetu/mcp-client-chatbot/commit/d97d891bc3d63b4a9ca0df829177e0368bc4a462))
* implement MCP server binding functionality ([0efc604](https://github.com/vineetu/mcp-client-chatbot/commit/0efc604ffbe967f2053dc34ae8cf289c4899fb14))
* implement real-time chat session creation with OpenAI API ([24c3947](https://github.com/vineetu/mcp-client-chatbot/commit/24c3947498ee1e630bd5ce62f1ca2c173cda16a9))
* implement server cache initialization based on environment ([d037f99](https://github.com/vineetu/mcp-client-chatbot/commit/d037f99109895816de93b8aba9d878403013a84f))
* implement smooth scrolling for user messages upon submission status and pass status prop to relevant components ([7a2cbf4](https://github.com/vineetu/mcp-client-chatbot/commit/7a2cbf42235f17586c7ef92a1238cecb0fd0fc68))
* implement speech system prompt and update voice chat options for enhanced user interaction ([5a33626](https://github.com/vineetu/mcp-client-chatbot/commit/5a336260899ab542407c3c26925a147c1a9bba11))
* implement temporary chat API and enhance UI components ([e9597d0](https://github.com/vineetu/mcp-client-chatbot/commit/e9597d032d039b078b9a52159be9c53a843d98e6))
* implement user caching and improve error handling in authentication flow ([6d31966](https://github.com/vineetu/mcp-client-chatbot/commit/6d319668bd445ff1d67f1a5c4e7a1b6a51e6498b))
* implement user preferences management with new API endpoints and database schema updates ([653c926](https://github.com/vineetu/mcp-client-chatbot/commit/653c92628c5e535df756a6b632bc42bf3780af8d))
* initialize selectedToolIndex to 0 based on searchQuery changes for improved user experience ([1ea521d](https://github.com/vineetu/mcp-client-chatbot/commit/1ea521d298f1ccb1b3842a8be3a0390eff93eae5))
* introduce changesets for version management and fix OpenAI voice chat options bug ([#63](https://github.com/vineetu/mcp-client-chatbot/issues/63)) ([9ae823b](https://github.com/vineetu/mcp-client-chatbot/commit/9ae823b602f1ee20a9b9aeb9e3a88537084033b1))
* mcp server binding ([b1be8c1](https://github.com/vineetu/mcp-client-chatbot/commit/b1be8c1e5824cf5fa38a0bf45283fc31a1b47eeb))
* mermaid support ([db3fd64](https://github.com/vineetu/mcp-client-chatbot/commit/db3fd64e7dfca9da84a4cb459fe2d2c0e3b77faa))
* realtime voice chatbot with MCP tools ([#50](https://github.com/vineetu/mcp-client-chatbot/issues/50)) ([cf13e9d](https://github.com/vineetu/mcp-client-chatbot/commit/cf13e9df24eded1fc0e6fc8e44f728a44f6bc9d3))
* refactor chat actions and components for improved functionality and performance ([2f4dd19](https://github.com/vineetu/mcp-client-chatbot/commit/2f4dd19229789313e4283ed2b289a1aa85e10bc6))
* refactor chat preferences and shortcuts handling by replacing ShortcutsProvider with AppPopupProvider, update state management for temporary chat, and enhance keyboard shortcut functionality in related components ([84070d5](https://github.com/vineetu/mcp-client-chatbot/commit/84070d5d31922a85ab2f322216d5c79da0dc2f74))
* remove experimental caching option from Next.js config, add deepmerge dependency, and enhance message handling in i18n request for improved localization ([c1d3e3b](https://github.com/vineetu/mcp-client-chatbot/commit/c1d3e3b1501ebdac2b2c7f169ddc33cf95f3d6f4))
* set maxTokens to 30 in generateTitleFromUserMessageAction for improved title generation ([7dde3f1](https://github.com/vineetu/mcp-client-chatbot/commit/7dde3f156d60488488862967b40d81aa02a29955))
* Shortcuts Info ([6a5d71f](https://github.com/vineetu/mcp-client-chatbot/commit/6a5d71f62042663f11bcc43671af73643167da78))
* start i18n ([a9457d5](https://github.com/vineetu/mcp-client-chatbot/commit/a9457d5d8933a43518a1e4c83114124aaa2dda2e))
* system prompt preference ([c639900](https://github.com/vineetu/mcp-client-chatbot/commit/c63990004ac4cd05b612aaca7172e3d8ba4dbc9e))
* tool choice menual ([479c00d](https://github.com/vineetu/mcp-client-chatbot/commit/479c00df677d59222bef9268251c0d058dfee4d4))
* tool select ([9cc735b](https://github.com/vineetu/mcp-client-chatbot/commit/9cc735ba753cfa873ebe71c0bdafcb2849f444a5))
* tool setup ([6c16874](https://github.com/vineetu/mcp-client-chatbot/commit/6c1687496067e2ab77e421a1061a0b7a2dd391f1))
* update AppHeader button for temporary chat with size and variant adjustments ([032358c](https://github.com/vineetu/mcp-client-chatbot/commit/032358c9591d1b4d5a67de779c8d34354d332226))
* update default model to "4o" in AI models ([37a09f8](https://github.com/vineetu/mcp-client-chatbot/commit/37a09f8ca6a69ab5a97ff5c0be75d11151dcc41c))
* update Google model to use gemini-2.5-flash version ([4eb4d71](https://github.com/vineetu/mcp-client-chatbot/commit/4eb4d7130268210b3051eeb76bacf3eb1b8e78f4))
* update MCP client name validation to allow hyphens in addition to alphanumeric characters ([77b38cf](https://github.com/vineetu/mcp-client-chatbot/commit/77b38cfe8d2414afdbb24d94fb2521b9dfe22feb))
* update MCP server UI and translations for improved user experience ([1e2fd31](https://github.com/vineetu/mcp-client-chatbot/commit/1e2fd31f8804669fbcf55a4c54ccf0194a7e797c))
* update tool choice logic in chat API to handle required tools ([855843f](https://github.com/vineetu/mcp-client-chatbot/commit/855843f01dce58cd379e150888dff0acd52e78a1))
* update tool count calculation to utilize MCP server info ([5308fbf](https://github.com/vineetu/mcp-client-chatbot/commit/5308fbff956265f7d22d756479e8ceae31662e02))
* update user preferences management to use displayName and enhance chat preferences dialog functionality ([c845f2c](https://github.com/vineetu/mcp-client-chatbot/commit/c845f2c64f5bd23c7adb7386b97c6d529d5ad43a))
* update XAI model versions to use latest releases for grok-3-mini and grok-3 ([a42116f](https://github.com/vineetu/mcp-client-chatbot/commit/a42116f8d55acfb364cea1597a8e4c8a8e52d2a9))
* user preference ([f570ad1](https://github.com/vineetu/mcp-client-chatbot/commit/f570ad183565486988e80c55f5443e02c69a562b))


### Bug Fixes

* add rounded corners to error message styling in AssistMessagePart component ([9956c3f](https://github.com/vineetu/mcp-client-chatbot/commit/9956c3fe1b95f7508f5c804bf0ba8be8bfeed663))
* add vizualization system prompt part ([808f21e](https://github.com/vineetu/mcp-client-chatbot/commit/808f21e550506ed3df31fa4f0dc88365d74e7550))
* adjust background color in dark mode for improved contrast in globals.css ([f3dddf9](https://github.com/vineetu/mcp-client-chatbot/commit/f3dddf96fd28059e137bb9b1ba2de3db922afd9c))
* adjust textarea dimensions in ChatPreferencesDialogContent for improved user experience ([482ba79](https://github.com/vineetu/mcp-client-chatbot/commit/482ba795b4cb5fc9de046d5be45eb68d17bbca90))
* change CMD to use shell form for sequential commands (pnpm db:migrate && pnpm start) in Dockerfile ([bfc6585](https://github.com/vineetu/mcp-client-chatbot/commit/bfc6585cecfbd62fc867a79f038b3e69a3567bbe))
* **chat:** prevent infinite MCP tool call loop by precomputing toolChoice ([#49](https://github.com/vineetu/mcp-client-chatbot/issues/49)) ([ba7673b](https://github.com/vineetu/mcp-client-chatbot/commit/ba7673becd9eaa6acdcfb36a05997e14ab597cc5))
* correct conditional rendering for MCP server list in McpServerSelector component ([3402ba3](https://github.com/vineetu/mcp-client-chatbot/commit/3402ba33256da4029d3d9d46dfafc25cb3b57acb))
* correct spelling of 'manual' in tool invocation handling and related logging ([473b043](https://github.com/vineetu/mcp-client-chatbot/commit/473b0435c27377766a01ddd3e83351791372e2c5))
* css ([6a2f8e9](https://github.com/vineetu/mcp-client-chatbot/commit/6a2f8e9f19c9279fdc1cb5dfd2d8d9cfb63d89e2))
* DB defaults to SQLite even when USE_FILE_SYSTEM_DB is false ([485f8d7](https://github.com/vineetu/mcp-client-chatbot/commit/485f8d7b73bc4c4a2730c122c9890fab806ad915))
* DB defaults to SQLite even when USE_FILE_SYSTEM_DB is false ([90ceaa4](https://github.com/vineetu/mcp-client-chatbot/commit/90ceaa4606c40a926ff899f249ef6c1a3b1cb1aa))
* docker postgres not finsihed ([d49f275](https://github.com/vineetu/mcp-client-chatbot/commit/d49f27509f57921daf5491a556cf79abca048e88))
* enhance error logging by including error name in handleError function ([a2d4c6d](https://github.com/vineetu/mcp-client-chatbot/commit/a2d4c6d06fdac563938738d3000cbb5944748b25))
* enhance mobile UI experience with responsive design adjustments ([2eee8ba](https://github.com/vineetu/mcp-client-chatbot/commit/2eee8bab078207841f4d30ce7708885c7268302e))
* first validate, then render ([5c3ad28](https://github.com/vineetu/mcp-client-chatbot/commit/5c3ad28bddc07b7eca72172eb7691f68967869b6))
* hsuky ([3dcde85](https://github.com/vineetu/mcp-client-chatbot/commit/3dcde858a365ee57fb67c518e61855485c34c6e3))
* improve error handling and UI feedback in chat components ([d5301ee](https://github.com/vineetu/mcp-client-chatbot/commit/d5301ee5f7870b2d5fe138d351c447cf0afd85d5))
* improve error handling in chat route and adjust message part styling ([a4387d6](https://github.com/vineetu/mcp-client-chatbot/commit/a4387d661ddcf25a3fdf58c18f4f60788c2a0b17))
* modify MCP client initialization logic to allow configuration without development mode check ([5b1ed12](https://github.com/vineetu/mcp-client-chatbot/commit/5b1ed12eddbbc8352d2e35e65bd7ecc7078f7c9c))
* prevent effect execution when MCPServerBindingSelector is closed ([23ffc42](https://github.com/vineetu/mcp-client-chatbot/commit/23ffc427da032629f4d092e8dcd52152db7a29b5))
* remove file to get file types for lint-staged ([0c1e7eb](https://github.com/vineetu/mcp-client-chatbot/commit/0c1e7eb0ba74c8b9222f4981b7d38bae41df1a17))
* remove unnecessary padding from blockquote in markdown component ([1960184](https://github.com/vineetu/mcp-client-chatbot/commit/1960184b54b9beeafffb3a0c39c245c355be8ad5))
* remove window reload on error handling in MCPServerBindingSelector ([6533f32](https://github.com/vineetu/mcp-client-chatbot/commit/6533f32677ad0572223e3c10b3b59ba9ecc13153))
* sanitize function names for Google provider compatibility ([aadca01](https://github.com/vineetu/mcp-client-chatbot/commit/aadca01f11a3f03016e63bd87af3b696035fa13d))
* sanitize function names for Google provider compatibility ([a7f79b0](https://github.com/vineetu/mcp-client-chatbot/commit/a7f79b03f547052f0ddb5bc71bb90c4d75bddf4d))
* set default toolChoice to "auto" in app store and remove unnecessary logging in chat route ([ca3074d](https://github.com/vineetu/mcp-client-chatbot/commit/ca3074d924bb3010d0c8529eab2dad8ef8a61c48))
* speech ux ([baa849f](https://github.com/vineetu/mcp-client-chatbot/commit/baa849ff2b6b147ec685c6847834385652fc3191))
* support OpenAI real-time chat project instructions ([2ebbb5e](https://github.com/vineetu/mcp-client-chatbot/commit/2ebbb5e68105ef6706340a6cfbcf10b4d481274a))
* UI improvements for mobile experience ([#66](https://github.com/vineetu/mcp-client-chatbot/issues/66)) ([b4349ab](https://github.com/vineetu/mcp-client-chatbot/commit/b4349abf75de69f65a44735de2e0988c6d9d42d8))
* update AppHeader link behavior for temporary chat navigation ([77cd9da](https://github.com/vineetu/mcp-client-chatbot/commit/77cd9da01a79f0882f7955263de1a0f24bcaddd9))
* update dependencies and improve MCP client initialization ([2448177](https://github.com/vineetu/mcp-client-chatbot/commit/24481773e084295b09566d0eafc9fbd7b07ad022))
* update lastThreadAt calculation in chat repository to handle null values by using COALESCE for better data integrity ([4a5489c](https://github.com/vineetu/mcp-client-chatbot/commit/4a5489c8cfacc3d84fb439725e0b3cd5f21469ac))
* update MentionItemType and filter logic in prompt-input ([e9f9cfe](https://github.com/vineetu/mcp-client-chatbot/commit/e9f9cfee37316e4ea95c908778f98d854da6ed24))
* update Node.js engine version compatibility in package.json to support multiple versions ([7969b0f](https://github.com/vineetu/mcp-client-chatbot/commit/7969b0fa8bace0eacfedceeae516fb7acb7b6927))
* update sign-out behavior to redirect to sign-in page instead of … ([#61](https://github.com/vineetu/mcp-client-chatbot/issues/61)) ([04f771a](https://github.com/vineetu/mcp-client-chatbot/commit/04f771aa0ee1c170438ba8c78dd377fb65cea05e))
* update sign-out behavior to redirect to sign-in page instead of reloading the window for improved user experience ([3001591](https://github.com/vineetu/mcp-client-chatbot/commit/30015915e9c53a047451bc1501148918f0a941b7))
* update SQL syntax to use double quotes for table names in migrations ([48e9a43](https://github.com/vineetu/mcp-client-chatbot/commit/48e9a439f806ad2ec8da5c3fff3b01e4c3f2964a))
* update text rendering in EmptySlot component and optimize imports in message-parts ([8a31786](https://github.com/vineetu/mcp-client-chatbot/commit/8a317862771305ef713669192b8619c31aee449e))
* update translation key in ErrorMessage component for improved lo… ([#60](https://github.com/vineetu/mcp-client-chatbot/issues/60)) ([463ea4b](https://github.com/vineetu/mcp-client-chatbot/commit/463ea4b1c129f6554737495dd17401f01f1aad0d))
* update translation key in ErrorMessage component for improved localization consistency ([789172b](https://github.com/vineetu/mcp-client-chatbot/commit/789172b341c5c0d3a68781f6ca89468ecba5742c))
* update wording in ChatPreferencesDialogContent for clarity on personal preferences and guidelines ([fc694de](https://github.com/vineetu/mcp-client-chatbot/commit/fc694dea3e1c8d66e530129f528c626e1cc1d619))


### Miscellaneous Chores

* release 1.5.2 ([d185514](https://github.com/vineetu/mcp-client-chatbot/commit/d1855148cfa53ea99c9639f8856d0e7c58eca020))

## [1.6.1](https://github.com/cgoinglove/mcp-client-chatbot/compare/v1.6.0...v1.6.1) (2025-06-02)


### Bug Fixes

* speech ux ([baa849f](https://github.com/cgoinglove/mcp-client-chatbot/commit/baa849ff2b6b147ec685c6847834385652fc3191))

## [1.6.0](https://github.com/cgoinglove/mcp-client-chatbot/compare/v1.5.2...v1.6.0) (2025-06-01)


### Features

* add husky for formatting and checking commits  ([#71](https://github.com/cgoinglove/mcp-client-chatbot/issues/71)) ([a379cd3](https://github.com/cgoinglove/mcp-client-chatbot/commit/a379cd3e869b5caab5bcaf3b03f5607021f988ef))
* add Spanish, French, Japanese, and Chinese language support with UI improvements ([#74](https://github.com/cgoinglove/mcp-client-chatbot/issues/74)) ([e34d43d](https://github.com/cgoinglove/mcp-client-chatbot/commit/e34d43df78767518f0379a434f8ffb1808b17e17))
* implement cold start-like auto connection for MCP server and simplify status ([#73](https://github.com/cgoinglove/mcp-client-chatbot/issues/73)) ([987c442](https://github.com/cgoinglove/mcp-client-chatbot/commit/987c4425504d6772e0aefe08b4e1911e4cb285c1))


## [1.5.2](https://github.com/cgoinglove/mcp-client-chatbot/compare/v1.5.1...v1.5.2) (2025-06-01)


### Features

* Add support for Streamable HTTP Transport [#56](https://github.com/cgoinglove/mcp-client-chatbot/issues/56) ([#64](https://github.com/cgoinglove/mcp-client-chatbot/issues/64)) ([8783943](https://github.com/cgoinglove/mcp-client-chatbot/commit/878394337e3b490ec2d17bcc302f38c695108d73))
* implement speech system prompt and update voice chat options for enhanced user interaction ([5a33626](https://github.com/cgoinglove/mcp-client-chatbot/commit/5a336260899ab542407c3c26925a147c1a9bba11))
* update MCP server UI and translations for improved user experience ([1e2fd31](https://github.com/cgoinglove/mcp-client-chatbot/commit/1e2fd31f8804669fbcf55a4c54ccf0194a7e797c))


### Bug Fixes

* enhance mobile UI experience with responsive design adjustments ([2eee8ba](https://github.com/cgoinglove/mcp-client-chatbot/commit/2eee8bab078207841f4d30ce7708885c7268302e))
* UI improvements for mobile experience ([#66](https://github.com/cgoinglove/mcp-client-chatbot/issues/66)) ([b4349ab](https://github.com/cgoinglove/mcp-client-chatbot/commit/b4349abf75de69f65a44735de2e0988c6d9d42d8))


### Miscellaneous Chores

* release 1.5.2 ([d185514](https://github.com/cgoinglove/mcp-client-chatbot/commit/d1855148cfa53ea99c9639f8856d0e7c58eca020))
